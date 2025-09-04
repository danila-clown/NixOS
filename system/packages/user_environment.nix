{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  # Basic CLI Utilities
  git
  wget
  htop
  neofetch
  tree
  unzip
  zip
  nix-index
  
  # Media Utilities
  ffmpeg
  yt-dlp
  mediainfo
  imv
  
  # Additional Utilities
  mako
  swappy
  cliphist
  openssl

  # Desktop apps
  chromium
  firefox
  telegram-desktop
  discord
  obsidian
  vsc

  alacritty
  ];
} 