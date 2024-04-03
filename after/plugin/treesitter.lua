require('nvim-treesitter.configs').setup ({
  ensure_installed = {
    "c", "lua", "vim", "vimdoc", "query", "bash", "cmake", "cpp",
    "css", "csv", "doxygen", "git_config", "git_rebase", "gitattributes",
    "gitcommit", "gitignore",  "html", "htmldjango", "http", "ini",
    "javascript", "json", "json5", "latex", "markdown", 
    "php", "phpdoc", "python", "regex", "scss", "sql", "typescript",
    "xml",
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})
