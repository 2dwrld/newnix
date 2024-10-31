{ pkgs, ... }: {
   programs.nixvim = {
      plugins.none-ls = {
         enable = true;
         enableLspFormat = true;
         settings.update_in_insert = true;
         sources.formatting = {
            golines.enable = true;
         };
      };
   };
}
