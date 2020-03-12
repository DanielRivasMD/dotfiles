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
#--------------------------------------------/ GENERAL KEYBINDINGS /-----------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------

atom.commands.add 'atom-text-editor',

  'custom:insert-comma': ->
    atom.workspace.getActiveTextEditor()?.insertText(', ')

  'custom:insert-tilde': ->
    atom.workspace.getActiveTextEditor()?.insertText(' ~ ')

  'custom:insert-equal': ->
    atom.workspace.getActiveTextEditor()?.insertText(' = ')
  'custom:insert-equalequal': ->
    atom.workspace.getActiveTextEditor()?.insertText(' == ')

  'custom:insert-plus': ->
    atom.workspace.getActiveTextEditor()?.insertText(' + ')
  'custom:insert-minus': ->
    atom.workspace.getActiveTextEditor()?.insertText(' - ')
  'custom:insert-times': ->
    atom.workspace.getActiveTextEditor()?.insertText(' * ')
  'custom:insert-divide': ->
    atom.workspace.getActiveTextEditor()?.insertText(' / ')

  'custom:insert-lessthan': ->
    atom.workspace.getActiveTextEditor()?.insertText(' < ')
  'custom:insert-morethan': ->
    atom.workspace.getActiveTextEditor()?.insertText(' > ')
  'custom:insert-lessequal': ->
    atom.workspace.getActiveTextEditor()?.insertText(' <= ')
  'custom:insert-moreequal': ->
    atom.workspace.getActiveTextEditor()?.insertText(' >= ')


#------------------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------/ Awk /-----------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------


#------------------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------/ Bash /----------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------


#------------------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------/ Go /------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------

  'custom:insert-go_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' := ')

#------------------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------/ Julia /---------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------

  'custom:insert-plus_broadcast': ->
    atom.workspace.getActiveTextEditor()?.insertText(' .+ ')
  'custom:insert-minus_broadcast': ->
    atom.workspace.getActiveTextEditor()?.insertText(' .- ')
  'custom:insert-times_broadcast': ->
    atom.workspace.getActiveTextEditor()?.insertText(' .* ')
  'custom:insert-divide_broadcast': ->
    atom.workspace.getActiveTextEditor()?.insertText(' ./ ')

  'custom:insert-lessthan_broadcast': ->
    atom.workspace.getActiveTextEditor()?.insertText(' .< ')
  'custom:insert-lessequal_broadcast': ->
    atom.workspace.getActiveTextEditor()?.insertText(' .<= ')
  'custom:insert-morethan_broadcast': ->
    atom.workspace.getActiveTextEditor()?.insertText(' .> ')
  'custom:insert-moreequal_broadcast': ->
    atom.workspace.getActiveTextEditor()?.insertText(' .>= ')

  'custom:insert-equalequalequal': ->
    atom.workspace.getActiveTextEditor()?.insertText(' === ')

  'custom:insert-julia_pipe': ->
    atom.workspace.getActiveTextEditor()?.insertText(' |> ')


#------------------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------/ Markdown /------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------


#------------------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------/ R /-------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------

  'custom:insert-r_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' <- ')
  'custom:insert-r_up_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' <<- ')

  'custom:insert-r_pipe_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %<>% ')
  'custom:insert-r_pipe': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %>% ')
  'custom:insert-r_pipe_var': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %$% ')
  'custom:insert-r_pipe_tee': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %T>% ')
  'custom:insert-r_include': ->
    atom.workspace.getActiveTextEditor()?.insertText(' %in% ')

#------------------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------/ Rust /----------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------

  'custom:insert-rust_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' => ')
  'custom:insert-r_right_assign': ->
    atom.workspace.getActiveTextEditor()?.insertText(' -> ')

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
