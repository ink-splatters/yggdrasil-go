with import <nixpkgs> { };
let
  llvmPackages = llvmPackages_18;
  clang = clang_18;
in
mkShell.override { inherit (llvmPackages) stdenv; } {
  nativeBuildInputs = [
    clang
    gnumake
    go_1_23
  ];
}
