{ pkgs, ... }:

{
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.clown = {
      isNormalUser = true;
      description = "Clown";
      extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" "audio" "video" "docker" ];
      packages = with pkgs; [];
    };
  };

  # Enable automatic login for the user
  services.getty.autologinUser = "clown";
}