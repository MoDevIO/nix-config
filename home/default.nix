
{
    imports = [
        ./hyprland/hyprland.nix
        ./kitty/kitty.nix
        ./nvim/nvim.nix
        ./firefox/firefox.nix
        ./vscode.nix 
        ./dark-mode.nix
        ./mouse-cursor.nix
        ./nixcord/nixcord.nix
    ];

    home.stateVersion = "26.05";
}