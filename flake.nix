{
  description = "Tad Fisher's resume";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs = { self, nixpkgs }: {
    defaultPackage.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.callPackage ./default.nix { };
  };
}
