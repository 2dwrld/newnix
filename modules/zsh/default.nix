{ config, lib, pkgs, ... }: {
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        shellAliases =
            let
                flakeDir = "~/nix";
            in 
            
        {
            dots = "cd /home/lad/nix/";
            mkdir = "mkdir -p";
            mkdircd = "mkdir -p $1 && cd $1";
            shutdown = "shutdown -h now";
            c = "clear";
            fm = "superfile";
            ff = "nitch";
            cat = "bat";
            v = "nvim";
            tree = "eza --icons --sort=type -T";
            htop = "btop";
            ls = "eza --icons";
            sl = "eza --icons";
            download = "xh --download";
        };

        history.size = 10000;
        history.path = "${config.xdg.dataHome}/zsh/history";

        oh-my-zsh = {
          enable = true;
          plugins = [ "git" "sudo" "vi-mode" "man" ];
          theme = "robbyrussell"; 
        };
    };
}
