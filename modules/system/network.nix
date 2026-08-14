{ hostname, ... }:

{
    networking.hostName = hostname;

    networking.networkmanager.enable = true;

    networking.firewall.enable = false;
}