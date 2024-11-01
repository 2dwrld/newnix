{ config, lib, pkgs, ... }: {

    programs.alacritty = {
        enable = true;

        settings = {
            window.opacity = 0.95;

            font = {
                size = 14.0;

                normal = {
                    family = "JetBrains Mono";
                    style = "Bold";
                };
            };

        colors.primary.background = "#161618";

        };
    };
}

