{
  imports = [
    ./lsp.nix
    ./treesitter.nix
    ./vimtex.nix
    ./telescope.nix
    ./oil.nix
    ./lualine.nix
    ./obsidian.nix
   # ./bufferline.nix
   # ./luasnip.nix
  ];

  programs.nixvim = {


    plugins = {
      gitsigns = {
        enable = true;
        settings.signs = {
          add.text = "+";
          change.text = "~";
        };
      };

      nvim-autopairs.enable = true;

      colorizer = {
        enable = true;
        # FIXME Problem with colorizer it says that it doesnt exist ?
        #settings = {
        #  user_default_options.names = false;
        #};
      };

      trim = {
        enable = true;
        settings = {
          highlight = true;
          ft_blocklist = [
            "checkhealth"
            "lspinfo"
            "TelescopePrompt"
          ];
        };
      };
    };
  };
}
