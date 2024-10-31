 _: {
   programs.nixvim = {
      performance = {
         combinePlugins = {
            enable = true;
         };
         byteCompileLua.enable = true;
      };
   };
}
