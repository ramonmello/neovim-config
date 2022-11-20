local cfg = {
  hint_enable = false, -- virtual hint enable
  hint_prefix = "🐼 ", -- Panda for parameter
  extra_trigger_chars = { "," }, -- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
  toggle_key = '<M-;>',
  select_signature_key = '<M-n>',
}

require "lsp_signature".setup(cfg)
