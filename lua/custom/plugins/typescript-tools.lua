 require('typescript-tools').setup {
        capabilities = require('blink.cmp').get_lsp_capabilities(),
        settings = {
          separate_diagnostic_server = true,
          publish_diagnostic_on = 'insert_leave',
          expose_as_code_action = {},
          tsserver_path = nil,
          tsserver_plugins = {},
          tsserver_max_memory = 'auto',
          tsserver_format_options = {},
          tsserver_locale = 'en',
          complete_function_calls = true,
          tsserver_file_preferences = {
            includecompletionsformoduleexports = true,
            includecompletionswithinserttext = true,
            includeautomaticoptionalchaincompletions = true,
            includecompletionsforimportstatements = true,
            importmodulespecifierpreference = 'non-relative',
            importmodulespecifierending = 'auto',
          },
          include_completions_with_insert_text = true,
          code_lens = 'off',
          disable_member_code_lens = true,
          jsx_close_tag = {
            enable = false,
            filetypes = { 'javascriptreact', 'typescriptreact' },
          },
        },
      }
