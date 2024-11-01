{ inputs, config, pkgs, ... }: {
    services.xserver = {
        enable = true;

        layout = "us";
        xkbVariant = "";

        libinput = {
            enable = true;
            mouse.accelProfile = "flat"; # or "adaptive"
            touchpad.accelProfile = "adaptive";
        };

        videoDrivers = [ "amdgpu" ];
        deviceSection = ''Option "TearFree" "True"'';
    };
}
