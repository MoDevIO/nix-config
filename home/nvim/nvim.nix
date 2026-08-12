{ pkgs, ... }:

{
    programs.neovim = {
        enable = true;
        defaultEditor = true;

        viAlias = true;

        plugins = with pkgs.vimPlugins; [
            blink-cmp
            blink-pairs
            onedark-nvim
            copilot-lua
            #nvim-error-lens
            gitsigns-nvim
            snacks-nvim
            #wakatime-vim
        ];
    };
}