{
    programs.kitty = {
        enable = true;

        autoThemeFiles = {
            dark = "Catppuccin-Mocha";
            light = "Catppuccin-Mocha";
            noPreference = "Catppuccin-Mocha";
        };

        settings = {
            shell = "zsh";
            confirm_os_window_close = 0;

            scrollbar_track_opacity = 0;
            scrollbar_track_hover_opacity = 0;
            allow_remote_control = true;


            font_family = "JetBrainsMono Nerd Font";
            font_size = 13.5;
            disable_ligatures = false;

            enable_audio_bell = false;

            url_style = "underline";

            remember_window_size = false;
            window_padding_width = 25;

            cursor_trail = 1;
        };
    };

    programs.zsh = {
        enable = true;

        oh-my-zsh = {
            enable = true;
            theme = "arrow";
        };

        shellAliases = {
            # Git
            ga = "git add";
            gc = "git commit";
            gca = "git commit --amend";
            gs = "git status";
            gp = "git push";
            gpl = "git pull";
            gcl = "git clone git@github.com:";
            gco = "git checkout";
        };

    };
}