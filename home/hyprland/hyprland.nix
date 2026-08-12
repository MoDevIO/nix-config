{ lib, keyboardLayout, ... }:

let
    lua = lib.generators.mkLuaInline;

    bind = {
        key,
        action,
        flags ? null,
    }: {
        _args = [
            key
            (lua action)
        ]
        ++ lib.optional (flags != null) (lua flags);
    };
in
{
    wayland.windowManager.hyprland = {
        enable = true;

        configType = "lua";
        settings = {

            config.input.kb_layout = keyboardLayout;

            step._var = 20;

            bind = [
                (bind {
                key = "SUPER + C";
                action = "hl.dsp.window.close()";
                })
                    
                (bind {
                key = "SUPER + Q";
                action = "hl.dsp.exec_cmd(\"kitty\")";
                })

                (bind {
                key = "SUPER + M";
                action = "hl.dsp.exit()";
                })


                (bind {
                key = "SUPER + H";
                action = "hl.dsp.focus({ direction = \"left\" })";
                })

                (bind {
                key = "SUPER + J";
                action = "hl.dsp.focus({ direction = \"down\" })";
                })

                (bind {
                key = "SUPER + K";
                action = "hl.dsp.focus({ direction = \"up\" })";
                })

                (bind {
                key = "SUPER + L";
                action = "hl.dsp.focus({ direction = \"right\" })";
                })


                (bind {
                key = "SUPER + SHIFT + H";
                action = "hl.dsp.window.move({ direction = \"left\" })";
                })

                (bind {
                key = "SUPER + SHIFT + J";
                action = "hl.dsp.window.move({ direction = \"down\" })";
                })

                (bind {
                key = "SUPER + SHIFT + K";
                action = "hl.dsp.window.move({ direction = \"up\" })";
                })

                (bind {
                key = "SUPER + SHIFT + L";
                action = "hl.dsp.window.move({ direction = \"right\" })";
                })


                (bind {
                key = "SUPER + CTRL + H";
                action = "hl.dsp.window.resize({ x = -step, y = 0, relative = true })";
                flags = "{ repeating = true }";
                })

                (bind {
                key = "SUPER + CTRL + J";
                action = "hl.dsp.window.resize({ x = 0, y = step, relative = true })";
                flags = "{ repeating = true }";
                })

                (bind {
                key = "SUPER + CTRL + K";
                action = "hl.dsp.window.resize({ x = 0, y = -step, relative = true })";
                flags = "{ repeating = true }";
                })

                (bind {
                key = "SUPER + CTRL + L";
                action = "hl.dsp.window.resize({ x = step, y = 0, relative = true })";
                flags = "{ repeating = true }";
                })
            ];
        };
    };
}
