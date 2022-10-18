require('config.lsp.coq')
require('config.lsp.null-ls')
require('config.lsp.mason')
require('config.lsp.lsp-inlay-hints')

local lspconfig = require('lspconfig')


-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver', 'omnisharp' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
    -- on_attach = my_custom_on_attach,
  }))
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    -- Server-specific settings...
    settings = {
      ["rust-analyzer"] = {}
    }
}

-- omnisharp lsp config
lspconfig.omnisharp.setup {
  -- capabilities = require('coq').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  -- on_attach = function(_, bufnr)
  --   vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- end,
  cmd = { "dotnet", "/Users/amari/.local/share/nvim/mason/packages/omnisharp/OmniSharp.dll" },
  enable_editorconfig_support = true,
  enable_ms_build_load_projects_on_demand = true,
  enable_roslyn_analyzers = false,
  organize_imports_on_format = false,
  enable_import_completion = true,
  sdk_include_prereleases = true,
  analyze_open_documents_only = false,
}
