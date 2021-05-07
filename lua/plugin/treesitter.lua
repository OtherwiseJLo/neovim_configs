local npairs = require('nvim-autopairs')

npairs.setup({
  check_ts = true,
  ts_config = { },
})

require('nvim-treesitter.configs').setup {

  ensure_installed = "maintained",

  -- Consistent syntax highlighting
  highlight = {
    enable = true
  },

  -- Incremental selection based on named nodes from grammar
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    }
  },

  -- Tree-sitter based indentation
  indent = {
    indent = {
      enable = true,
    }
  },

  -- Added by nvim-treesitter-refactor plugin
  refactor = {
    -- Highlights definition and usage of the current symbol under the cursor
    highlight_definitions = { enable = true },

    -- Highlights the block from the current scope where the cursor is
    highlight_current_scope = { enable = true },

    -- Renames the symbol under the cursor within the current scope
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      },
    },

    -- Provides "go to definition" for the symbol under the cursor,
    -- and lists the definitions from the current file.
    -- If you use goto_definition_lsp_fallback instead of goto_definition
    -- in the config below, vim.lsp.buf.definition is used if 
    -- nvim-treesitter can not resolve the variable.
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = "gnd",
        list_definitions = "gnD",
        list_definitions_toc = "g0",
        -- go to the next/previous usage of the identifier under the cursor.
        goto_next_usage = "<a-*>",
        goto_previous_usage = "<a-#>",
      },
    },

    -- 

  },


  textobjects = {
     select = {
      enable = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",

        -- Or you can define your own textobjects like this
        ["iF"] = {
          python = "(function_definition) @function",
          cpp = "(function_definition) @function",
          c = "(function_definition) @function",
          java = "(method_declaration) @function",
        },
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]]"] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[["] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@class.outer",
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ["<leader>a"] = "@parameter.inner",
      },
      swap_previous = {
        ["<leader>A"] = "@parameter.inner",
      },
    },
    lsp_interop = {
      enable = true,
      peek_definition_code = {
        ["df"] = "@function.outer",
        ["dF"] = "@class.outer",
      },
    },
  },

  --tree_docs = {enable = true},

  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  },

  -- autopair setup
  autopairs = {enable = true}
}
