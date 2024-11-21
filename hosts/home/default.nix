{...}: {
  home-manager = {
    useGlobalPkgs = true;

    users.ethan = {
      imports = [
        ../../../modules/home/alacritty.nix
        ../../../modules/home/fish.nix
        ../../../modules/home/helix.nix
        ../../../modules/home/environment.nix
        ../../../modules/home/starship.nix
        ../../../modules/home/direnv.nix
      ];
      home = {
        username = "ethan";
        homeDirectory = "/Users/ethan";
        stateVersion = "24.05";
        sessionPath = [
          "/Users/ethan/.nix-profile/bin"
          "/Users/ethan/.local/bin"
          "/Users/ethan/go/bin"
          "/run/current-system/sw/bin"
          "/opt/homebrew/bin"
          "/nix/var/nix/profiles/default/bin"
          "/usr/bin"
          "/bin"
          "/usr/local/bin"
          "/usr/sbin"
          "/sbin"
        ];
      };
    };
  };
}
