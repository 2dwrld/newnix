{ pkgs, ...  }: {
   programs.nixvim = {
      plugins.lsp = {
         enable = true;
         servers = {
            gopls = {
               enable = true;
               autostart = true;
            };
         };
      };
   };
}
