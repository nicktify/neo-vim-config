---- old
--local servers = { 'pyright', 'rust_analyzer', 'tsserver' }

--for _, lsp in pairs(servers) do
  --require('lspconfig')[lsp].setup {
    --on_attach = on_attach,
    --flags = {
      ---- This will be the default in neovim 0.7+
      --debounce_text_changes = 150,
    --}
  --}
--end

--require'lspconfig'.pyright.setup{}
--require'lspconfig'.tsserver.setup{}


---- new 
--k
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
--require('lspconfig')['pyright'].setup{
    --on_attach = on_attach,
    --flags = lsp_flags,
--}
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
--require('lspconfig')['rust_analyzer'].setup{
    --on_attach = on_attach,
    --flags = lsp_flags,
    ---- Server-specific settings...
    --settings = {
      --["rust-analyzer"] = {}
    --}
--}

--lspconfig = require "lspconfig"
--util = require "lspconfig/util"

--require'lspconfig'.gopls.setup{}

--lspconfig.gopls.setup {
  --cmd = {"gopls", "serve"},
  --cmd = {"serve"},
  --filetypes = {"go", "gomod"},
  --root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  --settings = {
    --gopls = {
      --analyses = {
        --unusedparams = true,
      --},
      --staticcheck = true,
    --},
  --}
--}

--function OrgImports(wait_ms)
  --local params = vim.lsp.util.make_range_params()
  --params.context = {only = {"source.organizeImports"}}
  --local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
  --for _, res in pairs(result or {}) do
    --for _, r in pairs(res.result or {}) do
      --if r.edit then
        --vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
      --else
        --vim.lsp.buf.execute_command(r.command)
      --end
    --end
  --end
--end
