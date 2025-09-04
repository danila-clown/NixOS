{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = {
      "$mainMod" = "SUPER";

      monitor = ",preferred,auto,1";

      env = [
        "XCURSOR_SIZE,24"
        "QT_QPA_PLATFORM,wayland"
      ];

      input = {
        kb_layout = "us";
        follow_mouse = 1;
      };

      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 2;
        layout = "dwindle";
      };

      decoration = {
        rounding = 5;
        drop_shadow = false;
      };

      animations = {
        enabled = false;
      };

      bind = [
        "$mainMod, Return, exec, alacritty"
        "$mainMod, Q, killactive"
        "$mainMod SHIFT, E, exit"
      ];
    };
  };
}