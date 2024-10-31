{ config, lib, pkgs, ... }: {
    imports = [
        ./alacritty
        ./btop
        ./git
        ./nixvim
        ./ssh
        ./tmux
        ./zsh
    ];
}
