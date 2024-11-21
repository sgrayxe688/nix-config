{
  config,
  pkgs,
  self,
  ...
}: {
  configurationRevision = self.rev or self.dirtyRev or null;
  build.applications = pkgs.lib.mkForce (pkgs.buildEnv {
    name = "applications";
    paths = config.environment.systemPackages ++ config.home-manager.users.ethan.home.packages;
    pathsToLink = "/Applications";
  });
  defaults = {
    ".GlobalPreferences"."com.apple.mouse.scaling" = 2.0;
    NSGlobalDomain = {
      "com.apple.trackpad.scaling" = 2.0;
      AppleFontSmoothing = 0;
      AppleInterfaceStyle = "Dark";
      AppleKeyboardUIMode = 3;
      AppleScrollerPagingBehavior = true;
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;
      InitialKeyRepeat = 10;
      KeyRepeat = 2;
      NSAutomaticWindowAnimationsEnabled = true;
      NSWindowResizeTime = 0.1;
      NSWindowShouldDragOnGesture = true;
      "com.apple.sound.beep.feedback" = 0;
    };
    dock = {
      autohide = true;
      autohide-delay = 0.0;
      autohide-time-modifier = 0.0;
      dashboard-in-overlay = true;
      largesize = 85;
      launchanim = true;
      magnification = false;
      mru-spaces = false;
      orientation = "bottom";
      show-process-indicators = true;
      show-recents = false;
      static-only = false;
      tilesize = 50;
      persistent-apps = [
        "/System/Applications/Launchpad.app"
        "/System/Applications/Messages.app"
        "/Applications/Discord.App"
        "/System/Applications/Mail.app"
        "/System/Applications/FaceTime.app"
        "/Applications/Nix Apps/Alacritty.app"
        "/Applications/Sigmaos.app"
        "/Applications/Whisky.app"
      ];
      wvous-tl-corner = 1; 
      wvous-tr-corner = 1; 
      wvous-bl-corner = 1;
      wvous-br-corner = 1; 
    };
    finder = {
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;
      CreateDesktop = false;
      FXDefaultSearchScope = "SCcf"; # Search current directory first
      FXEnableExtensionChangeWarning = false; # Disable warning when changing file extension
      QuitMenuItem = true;
      NewWindowTarget = "OS volume";
    };
    spaces.spans-displays = false;
  };
  keyboard = {
    remapCapsLockToControl = false;
    enableKeyMapping = true;
  };
  stateVersion = 5;
}