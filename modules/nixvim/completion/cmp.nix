{ pkgs, ... }: {
   programs.nixvim = {
      plugins.cmp = {
         enable = true;
         autoEnableSources = true;
         settings = {  
            sources = [
               { name = "nvim_lsp"; }
               { name = "nvim_lsp_signature_help"; }
               { name = "path"; }
               { name = "buffer"; }
            ];
            experimental = {
               ghost_text = true;
            };
            performance = {
               debounce = 60;
               fetchingTimeout = 200;
               maxViewEntries = 30;
            };
            formatting = {
               fields = [
                  "kind"
                  "abbr"
                  "menu"
               ];
            };
            mapping = {
               # Движение по подсказакам
               "<C-p>" = "cmp.mapping.select_prev_item()";
               "<C-n>" = "cmp.mapping.select_next_item()";
               
               # Открыть/закрыть подсказки
               "<C-Space>" = "cmp.mapping.complete()";
               "<C-e>" = "cmp.mapping.close()";

               "<Tab>" = "cmp.mapping.confirm({ select = true })";
            };
         };
      };
   };
}
