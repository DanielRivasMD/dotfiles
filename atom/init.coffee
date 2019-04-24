# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

#------------------------------------------------------------------------------------------------------------------------------

# Custome R keys
atom.commands.add 'atom-text-editor',
  'custom:insert-r_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' <- ')

atom.commands.add 'atom-text-editor',
  'custom:insert-r_equal': ->
    atom.workspace.getActiveTextEditor()?.insertText(' = ')

atom.commands.add 'atom-text-editor',
  'custom:insert-r_equalequal': ->
    atom.workspace.getActiveTextEditor()?.insertText(' == ')

atom.commands.add 'atom-text-editor',
  'custom:insert-r_plus': ->
    atom.workspace.getActiveTextEditor()?.insertText(' + ')

atom.commands.add 'atom-text-editor',
  'custom:insert-r_minus': ->
    atom.workspace.getActiveTextEditor()?.insertText(' - ')

atom.commands.add 'atom-text-editor',
  'custom:insert-r_times': ->
    atom.workspace.getActiveTextEditor()?.insertText(' * ')

atom.commands.add 'atom-text-editor',
  'custom:insert-r_divide': ->
    atom.workspace.getActiveTextEditor()?.insertText(' / ')

atom.commands.add 'atom-text-editor',
  'custom:insert-r_comma': ->
    atom.workspace.getActiveTextEditor()?.insertText(', ')

atom.commands.add 'atom-text-editor',
  'custom:insert-r_comma_newline': ->
    atom.workspace.getActiveTextEditor()?.insertText(',\n')

#------------------------------------------------------------------------------------------------------------------------------
