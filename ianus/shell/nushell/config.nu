################################################################################
# Nushell Config File
################################################################################

# source
source ~/.archive/ianus/shell/nushell/init.toml
source ~/.archive/ianus/shell/nushell/alias.toml
source ~/.archive/ianus/shell/nushell/git.nu
source ~/.archive/ianus/shell/nushell/theme.nu
# source ~/.archive/ianus/shell/nushell/zoxide.toml

################################################################################

# The default config record. This is where much of your global configuration is setup.
let $config = {

  filesize_metric: false
  table_mode: compact_double            # basic, compact, compact_double, light, thin, with_love, rounded, reinforced, heavy, none, other
  use_ls_colors: true
  rm_always_trash: false
  color_config: $default_theme
  use_grid_icons: true
  footer_mode: "25"                     # always, never, number_of_rows, auto
  quick_completions: true               # set this to false to prevent auto-selecting completions when only one remains
  partial_completions: true             # set this to false to prevent partial filling of the prompt
  animate_prompt: false                 # redraw the prompt every second
  float_precision: 2
  use_ansi_coloring: true
  filesize_format: "auto"               # b, kb, kib, mb, mib, gb, gib, tb, tib, pb, pib, eb, eib, zb, zib, auto
  edit_mode: vi                         # emacs, vi
  max_history_size: 100000
  menu_config: {
    columns: 4
    col_width: 20                       # Optional value. If missing all the screen width is used to calculate column width
    col_padding: 2
    text_style: green
    selected_text_style: green_reverse
    marker: "| "
  }

  history_config: {
    page_size: 10
    selector: "!"
    text_style: green
    selected_text_style: green_reverse
    marker: "? "
  }

  keybindings: [

    {
      name: move_forward
      modifier: alt
      keycode: right
      mode: emacs
      event: { edit: oneword }
    }

  ]

  # keybindings: [

  #   {
  #     name: reload_config
  #     modifier: control
  #     keycode: char_r
  #     mode: emacs
  #     event: [
  #         { edit: { cmd: clear } }
  #         { edit: { cmd: insertString value: $"source '($nu.config-path)'" } }
  #         { send: Enter }
  #     ]
  #   }

  #   {
  #     name: completion_menu
  #     modifier: none
  #     keycode: tab
  #     mode: vi                          # emacs vi_normal vi_insert
  #     event: {
  #       until: [
  #         { send: menu name: completion_menu }
  #         { send: menunext }
  #       ]
  #     }
  #   }
  #   {
  #     name: completion_previous
  #     modifier: shift
  #     keycode: backtab
  #     mode: vi                          # emacs vi_normal vi_insert
  #     event: { send: menuprevious }
  #   }
  #   {
  #     name: history_menu
  #     modifier: control
  #     keycode: char_x
  #     mode: vi                          # emacs vi_normal vi_insert
  #     event: {
  #       until: [
  #         { send: menu name: history_menu }
  #         { send: menupagenext }
  #       ]
  #     }
  #   }
  #   {
  #     name: history_previous
  #     modifier: control
  #     keycode: char_z
  #     mode: vi                          # emacs vi_normal vi_insert
  #     event: {
  #       until: [
  #         { send: menupageprevious }
  #         { send: edit, cmd: undo }
  #       ]
  #     }
  #   }

  # ]

}
