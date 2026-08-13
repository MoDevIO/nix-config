{
    gtk = {
        enable = true;
        colorScheme = "dark";

        gtk3.extraConfig = {
            "gtk-application-prefer-dark-theme" = true;
        };

        gtk4.extraConfig = {
            "gtk-application-prefer-dark-theme" = true;
        };
    };

    qt = {
        enable = true;
        platformTheme.name = "gtk3";
    };
}