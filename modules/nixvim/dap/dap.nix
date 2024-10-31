{ pkgs, ... }: {
   programs.nixvim = {
      plugins.dap = {
         enable = true;
         signs = {
            dapBreakpoint = {
               text = "●";
               texthl = "DapBreakpoint";
            };
            dapBreakpointCondition = {
               text = "●";
               texthl = "DapBreakpointCondition";
            };
            dapLogPoint = {
               text = "◆";
               texthl = "DapLogPoint";
            };
         };
         extensions = {  
            dap-go = {
               enable = true;
               delve.path = "${pkgs.delve}/bin/dlv";
            };
            dap-ui = {
               enable = true;
               floating.mappings = {
                  close = [ "<ESC>" "q" ];
               };
            };
            dap-virtual-text = {
               enable = true;
            };
         };
      };
   };
}
