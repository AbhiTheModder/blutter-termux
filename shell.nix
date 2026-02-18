{
  pkgs ? import <nixpkgs> { },
}:

let
  python = pkgs.python3.withPackages (
    ps: with ps; [
      requests
      pyelftools
    ]
  );
in

pkgs.mkShell {
  buildInputs = with pkgs; [
    python
    git
    cmake
    ninja
    pkg-config
    capstone_4
    fmt
    openssl
    icu72
  ];

  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
    pkgs.capstone_4
    pkgs.icu72
    pkgs.openssl
  ];
}
