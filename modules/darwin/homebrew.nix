{
  enable = true;
  onActivation.cleanup = "zap";
  global.autoUpdate = true;
  brews = [
    {
      name = "ollama";
      start_service = true;
      restart_service = "changed";
    }
  ];
  casks = [
    "docker"
    "discord"
    "spotify"
    "sigmaos"
    "whisky"
    "goland"
  ];
  taps = [
    "homebrew/bundle"
    "homebrew/services"
    "FelixKratz/formulae"
    "osx-cross/avr"
    "osx-cross/arm"
  ];
}
