{ pkgs, ... }: {
   programs.nixvim = {
      plugins.lsp-format = {
         enable = true;
         lspServersToEnable = [ "gopls" ];
      }; 
   };
}
