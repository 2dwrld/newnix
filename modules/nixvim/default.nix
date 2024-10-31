_: {
  imports = [
    ./options.nix

    ./remap.nix

    ./performance.nix

    ./colorschemes

    ./pluginmanagers/lazy.nix

    ./ui/noice.nix
    ./ui/nvim-notify.nix
    ./ui/nui-nvim.nix
    ./ui/nvim-web-devicons.nix
    ./ui/indent-blankline.nix

    ./statusline/staline.nix

    ./bufferlines/bufferline.nix

    ./utils/illuminate.nix
    ./utils/markdown-preview.nix
    ./utils/nvim-colorizer.nix
    ./utils/project-nvim.nix
    ./utils/ultimate-autopair.nix
    ./utils/undotree.nix
    ./utils/neoscroll.nix


    ./telescope/telescope.nix

    ./lsp/lsp.nix
    ./lsp/conform.nix
    ./lsp/lspkind.nix
    ./lsp/lsp-format.nix

    ./completion/cmp.nix
    ./completion/cmp-nvim-lsp-signature-help.nix

    ./none-ls/none-ls.nix

    ./dap/dap.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
  };
}
