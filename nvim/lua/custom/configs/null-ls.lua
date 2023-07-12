local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local sources = {
  formatting.uncrustify,
  formatting.rustfmt,
  formatting.ruff,
  formatting.stylua,

  code_actions.gitsigns,
  code_actions.refactoring,

  lint.shellcheck,
  lint.clang_check,
  lint.flake8,
}

null_ls.setup({
  sources = sources,
})
