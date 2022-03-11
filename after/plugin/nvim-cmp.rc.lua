
-- NVIM CMP
local cmp = require'cmp'

local lspkind = require('lspkind')
local luasnip = require('luasnip')

cmp.setup({
   snippet = {
      expand = function(args)
         luasnip.lsp_expand(args.body)
      end,
   },
   formatting = {
    format = lspkind.cmp_format({
       maxwidth = 50,
       menu = ({
       buffer = "[Buffer]",
       nvim_lsp = "[LSP]",
       luasnip = "[LuaSnip]",
       nvim_lua = "[Lua]",
       latex_symbols = "[Latex]",
    })})
   },
   mapping = {
      ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
      ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-o>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({
         behavior = cmp.ConfirmBehavior.Replace,
         select = true,
      }),
      ['<C-y>'] = function(fallback)
         if cmp.visible() then
            cmp.confirm({
               behavior = cmp.ConfirmBehavior.Replace,
               select = true,
            })
         elseif luasnip.expand_or_jumpable() then
            vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
         else
            fallback()
         end
      end,
      ['<C-Y>'] = function(fallback)
         if cmp.visible() then
           cmp.select_prev_item()
         elseif luasnip.jumpable(-1) then
           vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
         else
           fallback()
         end
      end,
   },
   sources = {
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
      { name = 'buffer' },
   }
})

