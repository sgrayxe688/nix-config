{
  pkgs,
  user,
  ...
}: let
  homeDir = "/Users/${user}";
in {
  stateVersion = "24.05";
  username = user;
  homeDirectory = homeDir;
  sessionVariables = {
    EDITOR = "hx";
    VISUAL = "fleet";
    MANPAGER = "sh -c 'col -bx | bat -l man -p'";
    IWD = "($PWD)";
  };
  sessionPath = [
    "/opt/homebrew/bin"
    "${homeDir}/.nix-profile/bin"
    "${homeDir}/.local/bin"
    "${homeDir}/bin"
    "${homeDir}/go/bin"
    "/run/current-system/sw/bin"
    "/nix/var/nix/profiles/default/bin"
    "/usr/bin"
    "/bin"
    "/usr/local/bin"
    "/usr/sbin"
    "/sbin"
  ];
}
