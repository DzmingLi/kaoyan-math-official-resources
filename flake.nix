{
  description = "Official postgraduate math papers, typeset with Typix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    typix = {
      url = "github:loqusion/typix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nur-fonts = {
      url = "github:DzmingLi/nur-packages";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, typix, nur-fonts }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
      buildFor = system:
        let
          pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
          lib = pkgs.lib;
          typixLib = typix.mkLib pkgs;
          founderFonts = pkgs.callPackage (nur-fonts + "/pkgs/fangzheng-fonts") { };
          mathFonts = pkgs.runCommand "exam-math-fonts" {
            nativeBuildInputs = [ (pkgs.python3.withPackages (p: [ p.fonttools ])) ];
          } ''
            fontDir="$out/share/fonts/opentype"
            python3 ${./scripts}/build-neu-math.py \
              --source-dir ${founderFonts}/share/fonts/truetype \
              --base-font ${pkgs.newcomputermodern}/share/fonts/opentype/public/NewCMMath-Regular.otf \
              --output "$fontDir/NEU-BZ-S92-Math.otf"
          '';
          fontPaths = map (font: "${font}/share/fonts") [ founderFonts mathFonts ];
          typstPackages = import ./typst-packages.nix;
          pdfPython = pkgs.python3.withPackages (p: [ p.pypdf ]);
          src = builtins.path {
            path = ./.;
            name = "kaoyan-math-sources";
            filter = path: type:
              let
                relative = lib.removePrefix (toString ./. + "/") (toString path);
                parts = lib.splitString "/" relative;
                allowedRoots = [ "历年真题+参考解答" "真题分类汇编" "scripts" ];
                excluded = lib.any (part: lib.elem part [ "backups" ".build" ".git" "output" "pdf" ]) parts;
              in
              !excluded && lib.elem (lib.head parts) allowedRoots &&
              (type == "directory" || lib.any (ext: lib.hasSuffix ext relative) [ ".typ" ".py" ".svg" ".png" ".jpg" ".jpeg" ".json" ".toml" ]);
          };
          pdfs = typixLib.mkTypstDerivation {
            name = "kaoyan-math-official-pdfs";
            inherit src fontPaths;
            emojiFont = null;
            unstable_typstPackages = typstPackages;
            nativeBuildInputs = [ pdfPython ];
            buildPhaseTypstCommand = ''
              python3 scripts/build-pdfs.py --output "$out" --jobs 4
            '';
            installPhaseCommand = "true";
          };
          collections = typixLib.mkTypstDerivation {
            name = "math-topic-collections";
            inherit src fontPaths;
            emojiFont = null;
            unstable_typstPackages = typstPackages;
            nativeBuildInputs = [ pdfPython ];
            buildPhaseTypstCommand = ''
              python3 scripts/build-collections.py --output "$out"
            '';
            installPhaseCommand = "true";
          };
        in {
          packages = { default = pdfs; inherit pdfs collections; fonts = founderFonts; math-fonts = mathFonts; };
          checks = { inherit pdfs; };
          devShell = typixLib.devShell {
            inherit fontPaths;
            emojiFont = null;
            TYPST_PACKAGE_CACHE_PATH = typixLib.fetchTypstPackages typstPackages;
            packages = [ pdfPython pkgs.gh ];
          };
        };
    in {
      packages = forAllSystems (system: (buildFor system).packages);
      checks = forAllSystems (system: (buildFor system).checks);
      devShells = forAllSystems (system: { default = (buildFor system).devShell; });
    };
}
