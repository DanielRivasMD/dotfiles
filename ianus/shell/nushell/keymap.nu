################################################################################

# Get just the extern definitions without the custom completion commands
use completions *

################################################################################

# The default config record. This is where much of your global configuration is setup.
let $config = {

  filesize_metric: false
  table_mode: rounded # basic, compact, compact_double, light, thin, with_love, rounded, reinforced, heavy, none, other
  use_ls_colors: true
  rm_always_trash: false
  color_config: $default_theme
  use_grid_icons: true
  footer_mode: "25" # always, never, number_of_rows, auto
  quick_completions: true  # set this to false to prevent auto-selecting completions when only one remains
  partial_completions: true  # set this to false to prevent partial filling of the prompt
  animate_prompt: false # redraw the prompt every second
  float_precision: 2
  use_ansi_coloring: true
  filesize_format: "auto" # b, kb, kib, mb, mib, gb, gib, tb, tib, pb, pib, eb, eib, zb, zib, auto
  edit_mode: emacs # emacs, vi
  max_history_size: 10000

  ################################################################################

  menu_config: {
    columns: 4
    col_width: 20   # Optional value. If missing all the screen width is used to calculate column width
    col_padding: 2
    text_style: green
    selected_text_style: green_reverse
    marker: "| "
  }

  ################################################################################

  history_config: {
    page_size: 10
    selector: "!"
    text_style: green
    selected_text_style: green_reverse
    marker: "? "
  }

  ################################################################################

  keybindings: [

    {
      name: move_word_right
      modifier: alt
      keycode: char_f
      mode: emacs
      event: {
        edit: MoveWordRight
      }
    }

    {
      name: move_word_left
      modifier: alt
      keycode: char_b
      mode: emacs
      event: {
        edit: MoveWordLeft
      }
    }

    {
      name: list_shells
      modifier: none
      keycode: f12
      mode: emacs
      event: {
        send: executehostcommand,
        cmd: "shells"
      }
    }

    {
      name: previous_dir
      modifier: shift
      keycode: f11
      mode: emacs
      event: {
        send: executehostcommand,
        cmd: "p"
      }
    }

    {
      name: next_dir
      modifier: shift
      keycode: f12
      mode: emacs
      event: {
        send: executehostcommand,
        cmd: "n"
      }
    }

    {
      name: cargo_check
      modifier: control
      keycode: f1
      mode: emacs
      event: {
        send: executehostcommand,
        cmd: "echo \"\n\tcargo check\n\"; cargo check"
      }
    }

    {
      name: cargo_test
      modifier: control
      keycode: f2
      mode: emacs
      event: {
        send: executehostcommand,
        cmd: "echo \"\n\tcargo test\n\"; cargo test --no-run"
      }
    }

    {
      name: completion_menu
      modifier: none
      keycode: tab
      mode: emacs # Options: emacs vi_normal vi_insert
      event: {
        until: [
          { send: menu name: completion_menu }
          { send: menunext }
        ]
      }
    }

    {
      name: completion_previous
      modifier: shift
      keycode: backtab
      mode: [emacs, vi_normal, vi_insert] # Note: You can add the same keybinding to all modes by using a list
      event: { send: menuprevious }
    }

    {
      name: history_menu
      modifier: control
      keycode: char_x
      mode: emacs
      event: {
        until: [
          { send: menu name: history_menu }
          { send: menupagenext }
        ]
      }
    }

    {
      name: history_previous
      modifier: control
      keycode: char_z
      mode: emacs
      event: {
        until: [
          { send: menupageprevious }
          { edit: undo }
        ]
      }
    }

  ]
}

################################################################################
