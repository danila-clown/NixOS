{ inputs, ...}:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    ./packages/core_system.nix
    ./packages/user_environment
    ./packages/fonts.nix
    ./modules/bundle.nix
    ];

  networking.hostName = "clowncomp";
  time.timeZone = "Europe/Moscow";
  i18n.defaultLocale = "en_US.UTF-8";
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "23.05";
}