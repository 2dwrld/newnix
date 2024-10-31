{ config, lib, pkgs, ... }: {
    boot = {
        loader = {
            systemd-boot.enable = true;
            efi.canTouchEfiVariables = true;
        };

        tmp.cleanOnBoot = true;
        initrd.kernelModules = [ "amdgpu" ];
        kernelParams = [ "psmouse.synaptics_intertouch=1" ]; 
    };
}
