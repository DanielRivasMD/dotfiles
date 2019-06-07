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
#--------------------------------------------/ LANGUAGE SPECIFIC SETTINGS /----------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------

# R markdown
atom.commands.add 'atom-text-editor[data-grammar="source gfm rmd"]',
  'custom:insert-r_include': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %in% ')

  'custom:insert-r_pipe': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %>% ')

  'custom:insert-r_pipe_var': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %$% ')

  'custom:insert-r_pipe_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %<>% ')

  'custom:insert-r_pipe_tee': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %T>% ')

  'custom:insert-r_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' <- ')

  'custom:insert-r_right_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' -> ')

  'custom:insert-r_equalequal': ->
    atom.workspace.getActiveTextEditor()?.insertText(' == ')

  'custom:insert-r_equal': ->
    atom.workspace.getActiveTextEditor()?.insertText(' = ')

  'custom:insert-r_plus': ->
    atom.workspace.getActiveTextEditor()?.insertText(' + ')

  'custom:insert-r_minus': ->
    atom.workspace.getActiveTextEditor()?.insertText(' - ')

  'custom:insert-r_times': ->
    atom.workspace.getActiveTextEditor()?.insertText(' * ')

  'custom:insert-r_divide': ->
    atom.workspace.getActiveTextEditor()?.insertText(' / ')

  'custom:insert-r_comma': ->
    atom.workspace.getActiveTextEditor()?.insertText(', ')

  'custom:insert-r_tilde': ->
    atom.workspace.getActiveTextEditor()?.insertText(' ~ ')

  'custom:insert-go_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' := ')

  'custom:insert-code_start': ->
    atom.workspace.getActiveTextEditor()?.insertText("```")

# Markdown
atom.commands.add 'atom-text-editor[data-grammar="text md"]',
  'custom:insert-code_start': ->
    atom.workspace.getActiveTextEditor()?.insertText("```")

# R
atom.commands.add 'atom-text-editor[data-grammar="source r"]',
  'custom:insert-r_include': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %in% ')

  'custom:insert-r_pipe': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %>% ')

  'custom:insert-r_pipe_var': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %$% ')

  'custom:insert-r_pipe_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %<>% ')

  'custom:insert-r_pipe_tee': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %T>% ')

  'custom:insert-r_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' <- ')

  'custom:insert-r_right_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' -> ')

  'custom:insert-r_equalequal': ->
    atom.workspace.getActiveTextEditor()?.insertText(' == ')

  'custom:insert-r_equal': ->
    atom.workspace.getActiveTextEditor()?.insertText(' = ')

  'custom:insert-r_plus': ->
    atom.workspace.getActiveTextEditor()?.insertText(' + ')

  'custom:insert-r_minus': ->
    atom.workspace.getActiveTextEditor()?.insertText(' - ')

  'custom:insert-r_times': ->
    atom.workspace.getActiveTextEditor()?.insertText(' * ')

  'custom:insert-r_divide': ->
    atom.workspace.getActiveTextEditor()?.insertText(' / ')

  'custom:insert-r_comma': ->
    atom.workspace.getActiveTextEditor()?.insertText(', ')

  'custom:insert-r_tilde': ->
    atom.workspace.getActiveTextEditor()?.insertText(' ~ ')

  'custom:insert-go_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' := ')

  'custom:insert-package_dev_comment': ->
    atom.workspace.getActiveTextEditor()?.insertText("#' ")

# Go
atom.commands.add 'atom-text-editor[data-grammar="source go"]',
  'custom:insert-go_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' := ')

#------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------/ PANDOC EXPORTS /----------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------

MakePandocFile = (extention, args) ->
  [pandoc_args,cwd] =  MakePandocArgs(extention,args)
  spawnchild('pandoc',pandoc_args,cwd)

MakePandocArgs = (extention, args) ->
  editor = atom.workspace.getActiveTextEditor()
  from_path = editor.getPath()
  to_path = from_path.substr(0, from_path.lastIndexOf('.') + 1) + extention;
  cwd = from_path.substr(0, from_path.lastIndexOf('\\') + 1);
  fpath = [from_path]
  pandoc_args = fpath.concat(args, ["-o"],[to_path])
  [pandoc_args, cwd]

spawnchild = (cmd,args,cwd) ->
  childProcess = require 'child_process'
  pandoc = childProcess.spawn cmd,args, {cwd}
  pandoc.stdout.on 'data', (d) -> console.log('stdout: ' + d);
  pandoc.stderr.on 'data', (d) -> console.log('stderr: ' + d);
  pandoc.on 'close', (c) -> console.log('child process exited with code ' + c);

atom.commands.add 'atom-text-editor',
  'Pandoc:pandoc2HTML': ->
    args = ['--webtex','-s']
    MakePandocFile('html',args)

atom.commands.add 'atom-text-editor',
'Pandoc:pandoc2PDF': ->
  args = ['--pdf-engine', '-s']
  MakePandocFile('pdf',args)

#------------------------------------------------------------------------------------------------------------------------------
