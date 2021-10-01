
-- NVIM CMP
local cmp = require'cmp'

cmp.setup({
snippet = {
expand = function(args)
-- For `vsnip` user.
--vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.

-- For `luasnip` user.
-- require('luasnip').lsp_expand(args.body)

-- For `ultisnips` user.
-- vim.fn["UltiSnips#Anon"](args.body)
end,
},
mapping = {
['<C-d>'] = cmp.mapping.scroll_docs(-4),
['<C-f>'] = cmp.mapping.scroll_docs(4),
['<C-Space>'] = cmp.mapping.complete(),
['<C-e>'] = cmp.mapping.close(),
['<CR>'] = cmp.mapping.confirm({ select = true }),
['<Tab>'] = cmp.mapping.confirm({ select = true }),
},
sources = {
{ name = 'nvim_lsp' },

-- For vsnip user.
{ name = 'vsnip' },

-- For luasnip user.
-- { name = 'luasnip' },

-- For ultisnips user.
-- { name = 'ultisnips' },

{ name = 'buffer' },
}
})

-- " Use <Tab> and <S-Tab> to navigate through popup menu
-- inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
-- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

-- let g:completion_confirm_key = ""
-- imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
--                  \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"
