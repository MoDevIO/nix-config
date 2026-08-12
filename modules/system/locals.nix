{ keyboardLayout, ... }:

{
  services.xserver.xkb = {
    layout = keyboardLayout;
    variant = "";
  };

  console.keyMap = keyboardLayout;

  i18n.defaultLocale = "en_GB.UTF-8";

  time.timeZone = "Europe/Berlin";
}