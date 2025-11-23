return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#1a2124", -- Default background
                base01 = "#5c7e8a", -- Lighter background (status bars)
                base02 = "#1a2124", -- Selection background
                base03 = "#5c7e8a", -- Comments, invisibles
                base04 = "#c7cfd1", -- Dark foreground
                base05 = "#d3dcde", -- Default foreground
                base06 = "#d3dcde", -- Light foreground
                base07 = "#c7cfd1", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#69a9bf", -- Variables, errors, red
                base09 = "#a7cfdd", -- Integers, constants, orange
                base0A = "#7ab8cc", -- Classes, types, yellow
                base0B = "#6ab4cd", -- Strings, green
                base0C = "#84c0d4", -- Support, regex, cyan
                base0D = "#57b0ce", -- Functions, keywords, blue
                base0E = "#77b3c8", -- Keywords, storage, magenta
                base0F = "#badce7", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
