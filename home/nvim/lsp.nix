{ pkgs, ... }:

{
  home.packages = [
    # Language servers
    pkgs.vscode-langservers-extracted
    pkgs.emmet-language-server
    pkgs.vtsls
    pkgs.lua-language-server
    pkgs.pyright

    # Formatters
    pkgs.prettier
    pkgs.nixfmt
    pkgs.luaformatter
  ];

  programs.nixvim = {
    lsp.servers = {
      html = {
        enable = true;
        config = {
          cmd = [
            "vscode-html-language-server"
            "--stdio"
          ];
          filetypes = [
            "html"
          ];
        };
      };

      emmet_language_server = {
        enable = true;
        config = {
          cmd = [
            "emmet-language-server"
            "--stdio"
          ];
          filetypes = [
            "html"
            "css"
            "scss"
          ];
        };
      };

      vtsls = {
        enable = true;
        config = {
          cmd = [
            "vtsls"
            "--stdio"
          ];
          filetypes = [
            "javascript"
            "typescript"
            "javascriptreact"
            "typescriptreact"
          ];
        };
      };

      nixd = {
        enable = true;
        config = {
          cmd = [
            "nixd"
            "--stdio"
          ];
          filetypes = [
            "nix"
          ];

          settings = { };
        };
      };

      lua_ls = {
        enable = true;
        config = {
          cmd = [ "lua-language-server" ];
          filetypes = [ "lua" ];

          settings = {
            Lua = {
              diagnostics = {
                globals = [ "vim" ];
              };
            };
          };
        };
      };

      pyright = {
        enable = true;
        config = {
          cmd = [
            "pyright-langserver"
            "--stdio"
          ];
          filetypes = [ "python" ];
        };
      };
    };
    diagnostic.settings = {
      signs.text = {
        ERROR = "";
        WARN = "";
        INFO = "";
        HINT = "";
      };
    };
  };
}
