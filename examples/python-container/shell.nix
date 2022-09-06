{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/21.11.tar.gz") {} }:

pkgs.mkShell {
    nativeBuildInputs = [
       pkgs.bazel_5
    ];
}

