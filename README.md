# tree-sitter-slangtemplate

[Slang Template](https://github.com/jeromegn/slang) template grammar for
[tree-sitter](https://tree-sitter.github.io/).

Fork of [tree-sitter-slim](https://github.com/kolen/tree-sitter-slim).

> [!NOTE]
> Meanwhile it's the very same slim parser, but with Crystal code injections.

## Neovim Install instructions

Anywhere in your lua config files:

```lua
-- Add Slang file type
vim.api.nvim_create_autocmd({ "BufNewFile", "BufReadPost" }, {
    pattern = "*.slang",
    callback = function()
        vim.bo.filetype = "slangtemplate"
    end,
})

-- Add tree-sitter parsers for Crystal and SlangTemplate
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

-- Crystal tree sitter, for Crystal code inside slang templates.
parser_config.crystal = {
    install_info = {
        url = "https://github.com/crystal-lang-tools/tree-sitter-crystal",
        files = { "src/parser.c", "src/scanner.c", "src/unicode.c" },
    },
}

parser_config.slangtemplate = {
    install_info = {
        url = "https://github.com/hugopl/tree-sitter-slangtemplate",
        files = { "src/parser.c", "src/scanner.c" },
    },
    filetype = "slangtemplate",
}
```

## Contributors

- [Hugo Parente Lima](https://github.com/hugopl) - creator and maintainer
