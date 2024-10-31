{ config, lib, pkgs, ... }: {

    environment.systemPackages = with pkgs; [

        # Desktop Applications
        alacritty           # Fast, cross-platform terminal emulator
        telegram-desktop    # Telegram client for desktop
        firefox-devedition  # Firefox Developer Edition browser

        # Development Tools
        go             # Go programming language
        docker              # Containerization platform for deploying applications

        # CLI Utilities
        xh                  # Modern replacement for curl, HTTP tool
        mpv                 # Versatile media player for audio & video
        eza                 # Improved, modern replacement for ls
        bat                 # Enhanced version of cat with syntax highlighting
        git                 # Version control system
        lux                 # CLI video downloader
        zip                 # Compression tool for creating zip archives
        unzip               # Tool for extracting zip archives
        fzf                 # Command-line fuzzy finder
        tldr                # Simplified, community-driven man pages with practical examples
        file                # Identifies file types
        wget                # Network downloader for retrieving files from the web
        btop                # Resource monitor with a modern UI
        nitch               # System information tool
        gtrash              # Replacement for rm, moves files to trash
        lazygit             # Simple terminal UI for git commands
        openssl             # Cryptographic library for SSL/TLS and hashing
        ripgrep             # Fast search tool, alternative to grep
        superfile           # File manager
        bluez               # Bluetooth stack for Linux
        bluez-tools         # Additional utilities for BlueZ (Bluetooth)
        brightnessctl       # CLI for adjusting screen brightness

        # GUI Utilities
        imv                 # Image viewer
        mako                # Lightweight notification daemon for Wayland

        # Wayland Utilities
        xwayland            # X11 compatibility layer for Wayland
        cliphist            # Clipboard manager for Wayland
        wl-clipboard        # Command-line clipboard utility for Wayland

        # Window Managers and Tiling Tools
        seatd               # Seat management for Wayland compositors
        waybar              # Highly customizable status bar for Wayland
        zellij              # Terminal workspace with layout and tab support
        tmux                # Terminal multiplexer
        niri                # Session manager for Wayland
        dmenu               # Dynamic menu for launching applications

        # Sound and Audio
        pipewire            # Low-latency audio and video server
        pulseaudio          # Sound server for handling audio on Linux
        pavucontrol         # Graphical sound mixer for PulseAudio

        # GPU & Graphics Tools
        glaxnimate          # Animation vector graphics tool
       # rocm-opencl-icd     # OpenCL support for AMD GPUs via ROCm

        # Nix
        home-manager        # Configuration manager for declarative, version-controlled system setups
    ];

    fonts.packages = with pkgs; [
        noto-fonts
        font-awesome
        jetbrains-mono
        noto-fonts-cjk-sans
        powerline-fonts
        noto-fonts-emoji
        powerline-symbols
        twemoji-color-font
        (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    ];
}
