
-- LSP CONFIG

local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
   local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
   local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

   -- Enable completion triggered by <c-x><c-o>
   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

   -- Mappings.
   local opts = { noremap=true, silent=true }

   -- See `:help vim.lsp.*` for documentation on any of the below functions
   buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
   buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
   buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
   buf_set_keymap('n', '<leader>lI', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
   buf_set_keymap('n', '<leader>li', "<cmd>lua require'telescope.builtin'.lsp_implementations()<cr>", opts)
   buf_set_keymap('n', '<leader>ld', "<cmd>lua require'telescope.builtin'.lsp_definitions()<cr>", opts)
   buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
   buf_set_keymap('n', '<leader>lwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', opts)
   buf_set_keymap('n', '<leader>lwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', opts)
   buf_set_keymap('n', '<leader>lwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>', opts)
   buf_set_keymap('n', '<leader>lt', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
   buf_set_keymap('n', '<leader>lc', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
   buf_set_keymap('n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
   buf_set_keymap('n', '<leader>lR', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
   buf_set_keymap('n', '<leader>le', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>', opts)
   buf_set_keymap('n', '<leader>lp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>', opts)
   buf_set_keymap('n', '<leader>ln', '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>', opts)
   buf_set_keymap('n', '<leader>lq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>', opts)
   buf_set_keymap('n', '<leader>lf', '<cmd>lua vim.lsp.buf.formatting()<cr>', opts)

   require "lsp_signature".on_attach()
end


-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'gopls', 'tsserver' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    },
    capabilities = capabilities
  }
end

local sumneko_binary_path = vim.fn.exepath('lua-language-server')
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

nvim_lsp.sumneko_lua.setup {
    cmd = {sumneko_binary_path};
    settings = {
        Lua = {
        runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
            -- Setup your lua path
            path = runtime_path,
        },
        diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
        },
        workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
            enable = false,
        },
        },
    },
}
