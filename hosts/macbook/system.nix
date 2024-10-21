{ ... }:

{
  system = {
    stateVersion = 5;
    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToControl = false;
    };
    defaults = {
      ".GlobalPreferences"."com.apple.mouse.scaling" = 4.0;
      spaces.spans-displays = false;
      dock = {
        autohide = true;
        autohide-delay = 0.0;
        autohide-time-modifier = 0.0;
        orientation = "bottom";
        dashboard-in-overlay = true;
        largesize = 85;
        tilesize = 50;
        magnification = false;
        launchanim = true;
        mru-spaces = false;
        show-recents = false;
        show-process-indicators = true;
        static-only = false;
      };
      finder = {
        AppleShowAllExtensions = true;
        AppleShowAllFiles = true;
        CreateDesktop = false;
        FXDefaultSearchScope = "SCcf"; # Current folder
        QuitMenuItem = true;
      };
      NSGlobalDomain = {
        AppleFontSmoothing = 0;
        AppleInterfaceStyle = "Dark";
        AppleKeyboardUIMode = 3; #FIXME: what is this?
        AppleScrollerPagingBehavior = true;
        AppleShowAllExtensions = true;
        AppleShowAllFiles = true;
        InitialKeyRepeat = 10;
        KeyRepeat = 2;
        NSAutomaticWindowAnimationsEnabled = true;
        NSWindowShouldDragOnGesture = true; # Can drag windows anywhere when holding cmd + ctrl
        NSWindowResizeTime = 0.1;
        "com.apple.sound.beep.feedback" = 0;
        "com.apple.trackpad.scaling" = 2.0;
        # NSAutomaticSpellingCorrectEnabled = false;
      };
    };
  };

  networking = {
    computerName = "Bryce's MacBook Pro";
    hostName = "macbook";
    knownNetworkServices = [ "Wi-Fi" ];
    dns = [ "9.9.9.9" "1.1.1.1" "8.8.8.8" ];
  };
}

