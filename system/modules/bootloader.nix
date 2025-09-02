{
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi";
    };
    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
      useOSProber = true;
      extraConfig = ''
        insmod part_gpt
        insmod search_fs_uuid
        insmod chain
      '';
    };
  };
  
  boot.loader.grub.configurationLimit = 13;
  boot.initrd.kernelModules = [ "nvidia" ];
  boot.kernelParams = [ 
    "psmouse.synaptics_intertouch=0"
    "nvidia_drm.modeset=1"
  ];
}