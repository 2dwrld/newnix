{ config, lib, pkgs, ... }: {
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        shellAliases =
            let
                flakeDir = "~/nix";
            in {

            nixvim = "cd /home/lad/nix/nixos/modules/nixvim/";
            mkdir = "mkdir -p";
            c = "clear";
            fm = "superfile";
            ff = "nitch";
            cat = "bat";
            v = "nvim";
        };

        history.size = 10000;
        history.path = "${config.xdg.dataHome}/zsh/history";

        oh-my-zsh = {
          enable = true;
          plugins = [ "git" "sudo" ];
          theme = "robbyrussell"; 
        };
    };
}
