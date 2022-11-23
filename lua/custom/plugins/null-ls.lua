
local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- js/ts
  b.code_actions.eslint_d,
  b.formatting.prettierd.with({
    prefer_local = "node_modules/bin"
  }),

  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
