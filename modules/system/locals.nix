{ keyboardLayout, ... }:

{
  services.xserver.xkb = {
    layout = keyboardLayout;
    variant = "";
  };

  console.keyMap = keyboardLayout;
  console.font = null;

  i18n.defaultLocale = "en_GB.UTF-8";

  time.timeZone = "Europe/Berlin";
}