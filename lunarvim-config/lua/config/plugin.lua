lvim.plugins = {
    -- better markdown
    require('config.plugins.vimwiki'),
    require('config.plugins.markdown-preview'),
    require('config.plugins.markdown-org'),
    require('config.plugins.mathjax-support-for-mkdp'),

    -- better visual mode
    require('config.plugins.vim-visual-multi'),
    require('config.plugins.vim-wordmotion'),

    -- show color of colorcode
    require('config.plugins.nvim-colorizer'),

    -- for mc carpet script
    require('config.plugins.vim-scarpet'),
    -- gen.nvim use ollama locally
    require('config.plugins.gen_nvim'),
    -- for rust
    require('config.plugins.rust-vim'),
}
