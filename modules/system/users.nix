{
    users.users."mo" = {
        isNormalUser = true;
        description = "Mo";
        extraGroups = [ "networkmanager" "wheel" ];
    };

    #home-manager.users.mo = import ../../home;
}