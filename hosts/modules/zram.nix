{ inputs, config, pkgs, ... }: {
    zramSwap = {
        enable = true;
        algorithm = "lz4";
        memoryPercent = 50;
        priority = 1000;
    };
}
