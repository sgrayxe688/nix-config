{
  # lib,
  inputs,
  ...
}: {
  settings = {
    allowed-users = ["@admin" "root" "ethan"];
    trusted-users = ["@admin" "ethan" "root"];
    max-jobs = "auto";
    sandbox = false;
    experimental-features = ["nix-command" "flakes"];
    warn-dirty = false;
    substituters = [
      "https://cache.lix.systems"
      "https://cache.nixos.org"
      "https://nix-community.cachix.org"
    ];
    trusted-public-keys = [
      "cache.lix.systems:aBnZUw8zA7H35Cz2RyKFVs3H4PlGTLawyY5KRbvJR8o="
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };
  registry.nixpkgs.flake = inputs.nixpkgs;
}
