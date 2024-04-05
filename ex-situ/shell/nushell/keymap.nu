####################################################################################################

# TODO: update keybindings
# The default config record. This is where much of your global configuration is setup.
$env.config = {

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
      name: previous_dir
      modifier: alt
      keycode: "f17"                                         # patch -> `alt-cmd-,`
      mode: emacs
      event: {
        send: executehostcommand,
        cmd: "p"
      }
    }

    {
      name: next_dir
      modifier: alt
      keycode: "f18"                                         # patched -> `alt-cmd-.`
      mode: emacs
      event: {
        send: executehostcommand,
        cmd: "n"
      }
    }

    {
      name: list_shells
      modifier: alt
      keycode: "f19"                                         # patched -> `alt-cmd-/`
      mode: emacs
      event: {
        send: executehostcommand,
        cmd: "shells"
      }
    }

    {
      name: completion_menu
      modifier: none
      keycode: tab
      mode: emacs                                           # Options: emacs vi_normal vi_insert
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
      mode: [emacs, vi_normal, vi_insert]                   # Note: You can add the same keybinding to all modes by using a list
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

####################################################################################################
