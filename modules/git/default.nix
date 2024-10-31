{ config, lib, pkgs, ... }: {
    programs.git = {
        enable = true;
        userName  = "2dwrld";
        userEmail = "aintstressedanymore@gmail.com";

        extraConfig = {
            init.defaultBranch = "main";
        };
    };
}
