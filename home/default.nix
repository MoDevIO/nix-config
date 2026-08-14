
{
    imports = [
        ./hyprland/hyprland.nix
        ./kitty/kitty.nix
        ./nvim/nvim.nix
        ./firefox/firefox.nix 
        ./dark-mode.nix
        ./nixcord/nixcord.nix
    ];

    home.stateVersion = "26.05";
}