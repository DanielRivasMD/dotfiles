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

  'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')

  'custom:insert-not_equal': -> atom.workspace.getActiveTextEditor()?.insertText(' != ')
  'custom:insert-aroba': -> atom.workspace.getActiveTextEditor()?.insertText(' @ ')
  'custom:insert-backslash': -> atom.workspace.getActiveTextEditor()?.insertText(' \\ ')
  'custom:insert-dollar': -> atom.workspace.getActiveTextEditor()?.insertText(' $ ')
  'custom:insert-percent': -> atom.workspace.getActiveTextEditor()?.insertText(' % ')
  'custom:insert-exponent': -> atom.workspace.getActiveTextEditor()?.insertText(' ^ ')
  'custom:insert-and': -> atom.workspace.getActiveTextEditor()?.insertText(' & ')
  'custom:insert-times': -> atom.workspace.getActiveTextEditor()?.insertText(' * ')
  'custom:insert-divide': -> atom.workspace.getActiveTextEditor()?.insertText(' / ')
  'custom:insert-plus': -> atom.workspace.getActiveTextEditor()?.insertText(' + ')
  'custom:insert-minus': -> atom.workspace.getActiveTextEditor()?.insertText(' - ')
  'custom:insert-equal': -> atom.workspace.getActiveTextEditor()?.insertText(' = ')
  'custom:insert-lessequal': -> atom.workspace.getActiveTextEditor()?.insertText(' <= ')
  'custom:insert-moreequal': -> atom.workspace.getActiveTextEditor()?.insertText(' >= ')
  'custom:insert-julia_pipe': -> atom.workspace.getActiveTextEditor()?.insertText(' |> ')
  'custom:insert-r_right_assign': -> atom.workspace.getActiveTextEditor()?.insertText(' -> ')
  'custom:insert-or': -> atom.workspace.getActiveTextEditor()?.insertText(' | ')
  'custom:insert-lessthan': -> atom.workspace.getActiveTextEditor()?.insertText(' < ')
  'custom:insert-morethan': -> atom.workspace.getActiveTextEditor()?.insertText(' > ')
  'custom:insert-r_assign': -> atom.workspace.getActiveTextEditor()?.insertText(' <- ')
  # # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-double_dot': -> atom.workspace.getActiveTextEditor()?.insertText('..')

  'custom:insert-not_equal_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .!= ')
  'custom:insert-aroba_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .@ ')
  'custom:insert-backslash_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .\\ ')
  'custom:insert-dollar_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .$ ')
  'custom:insert-percent_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .% ')
  'custom:insert-exponent_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .^ ')
  'custom:insert-and_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .& ')
  'custom:insert-times_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .* ')
  'custom:insert-divide_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' ./ ')
  'custom:insert-plus_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .+ ')
  'custom:insert-minus_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .- ')
  'custom:insert-equal_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .= ')
  'custom:insert-lessequal_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .<= ')
  'custom:insert-moreequal_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .>= ')
  'custom:insert-julia_pipe_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .|> ')
  'custom:insert-rust_assign': -> atom.workspace.getActiveTextEditor()?.insertText(' => ')
  'custom:insert-or_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .| ')
  'custom:insert-lessthan_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .< ')
  'custom:insert-morethan_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .> ')
  'custom:insert-go_assign': -> atom.workspace.getActiveTextEditor()?.insertText(' := ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-triple_dot': -> atom.workspace.getActiveTextEditor()?.insertText('...')

  'custom:insert-julia_mcinfo': -> atom.workspace.getActiveTextEditor()?.insertText('@info ')
  'custom:insert-julia_mcpipe': -> atom.workspace.getActiveTextEditor()?.insertText('@pipe ')
  'custom:insert-double_backslash': -> atom.workspace.getActiveTextEditor()?.insertText(' \\\\ ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-in': -> atom.workspace.getActiveTextEditor()?.insertText(' %in% ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-double_and': -> atom.workspace.getActiveTextEditor()?.insertText(' && ')
  'custom:insert-double_times': -> atom.workspace.getActiveTextEditor()?.insertText(' ** ')
  'custom:insert-double_divide': -> atom.workspace.getActiveTextEditor()?.insertText(' // ')
  'custom:insert-double_plus': -> atom.workspace.getActiveTextEditor()?.insertText(' ++ ')
  'custom:insert-double_minus': -> atom.workspace.getActiveTextEditor()?.insertText(' -- ')
  'custom:insert-equalequal': -> atom.workspace.getActiveTextEditor()?.insertText(' == ')
  # # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-r_pipe_var': -> atom.workspace.getActiveTextEditor()?.insertText(' %$% ')
  'custom:insert-r_pipe_assign': -> atom.workspace.getActiveTextEditor()?.insertText(' %<>% ')
  'custom:insert-double_or': -> atom.workspace.getActiveTextEditor()?.insertText(' || ')
  'custom:insert-r_pipe_left': -> atom.workspace.getActiveTextEditor()?.insertText(' %<% ')
  'custom:insert-r_pipe_right': -> atom.workspace.getActiveTextEditor()?.insertText(' %>% ')
  # # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-tilde': -> atom.workspace.getActiveTextEditor()?.insertText(' ~ ')
  'custom:insert-comma': -> atom.workspace.getActiveTextEditor()?.insertText(', ')

  'custom:insert-julia_mcdebug': -> atom.workspace.getActiveTextEditor()?.insertText('@debug ')
  'custom:insert-julia_mcchain': -> atom.workspace.getActiveTextEditor()?.insertText('@chain ')
  # # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-julia_mceval': -> atom.workspace.getActiveTextEditor()?.insertText('@eval ')
  'custom:insert-ni': -> atom.workspace.getActiveTextEditor()?.insertText(' %ni% ')
  'custom:insert-julia_mctest': -> atom.workspace.getActiveTextEditor()?.insertText('@test ')
  'custom:insert-julia_mcless': -> atom.workspace.getActiveTextEditor()?.insertText('@less ')
  'custom:insert-julia_mcedit': -> atom.workspace.getActiveTextEditor()?.insertText('@edit ')
  'custom:insert-julia_mcview': -> atom.workspace.getActiveTextEditor()?.insertText('@view ')
  'custom:insert-julia_mctime': -> atom.workspace.getActiveTextEditor()?.insertText('@time ')
  'custom:insert-julia_mcwhich': -> atom.workspace.getActiveTextEditor()?.insertText('@which ')
  'custom:insert-equalequal_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .== ')
  # # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-r_pipe_tee': -> atom.workspace.getActiveTextEditor()?.insertText(' %T>% ')
  'custom:insert-angle_brackets': -> atom.workspace.getActiveTextEditor()?.insertText('<>')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-r_pipe_left_plus': -> atom.workspace.getActiveTextEditor()?.insertText(' %<+% ')
  'custom:insert-r_pipe_right_plus': -> atom.workspace.getActiveTextEditor()?.insertText(' %+>% ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-equal_tilde': -> atom.workspace.getActiveTextEditor()?.insertText(' =~ ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')

  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-double_colon': -> atom.workspace.getActiveTextEditor()?.insertText('::')
  'custom:insert-r_right_assign_up': -> atom.workspace.getActiveTextEditor()?.insertText(' ->> ')
  'custom:insert-rust_derive': -> atom.workspace.getActiveTextEditor()?.insertText('#[]')
  'custom:insert-julia_subtype': -> atom.workspace.getActiveTextEditor()?.insertText(' <: ')
  'custom:insert-julia_supertype': -> atom.workspace.getActiveTextEditor()?.insertText(' >: ')
  'custom:insert-r_assign_up': -> atom.workspace.getActiveTextEditor()?.insertText(' <<- ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')

  'custom:insert-not_equal_math': -> atom.workspace.getActiveTextEditor()?.insertText(' ∉ ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-sqrt_math': -> atom.workspace.getActiveTextEditor()?.insertText(' √ ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-equal_math': -> atom.workspace.getActiveTextEditor()?.insertText(' ∈ ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')

  'custom:insert-not_equalequal': -> atom.workspace.getActiveTextEditor()?.insertText(' !== ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-low_backslash': -> atom.workspace.getActiveTextEditor()?.insertText(' \\= ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-low_percent': -> atom.workspace.getActiveTextEditor()?.insertText(' %= ')
  'custom:insert-low_exponent': -> atom.workspace.getActiveTextEditor()?.insertText(' ^= ')
  'custom:insert-low_and': -> atom.workspace.getActiveTextEditor()?.insertText(' &= ')
  'custom:insert-low_times': -> atom.workspace.getActiveTextEditor()?.insertText(' *= ')
  'custom:insert-low_divide': -> atom.workspace.getActiveTextEditor()?.insertText(' /= ')
  'custom:insert-low_plus': -> atom.workspace.getActiveTextEditor()?.insertText(' += ')
  'custom:insert-low_minus': -> atom.workspace.getActiveTextEditor()?.insertText(' -= ')
  'custom:insert-triple_equal': -> atom.workspace.getActiveTextEditor()?.insertText(' === ')
  'custom:insert-rust_left_assign': -> atom.workspace.getActiveTextEditor()?.insertText(' <<= ')
  'custom:insert-rust_rigth_assign': -> atom.workspace.getActiveTextEditor()?.insertText(' >>= ')
  'custom:insert-low_double_dot': -> atom.workspace.getActiveTextEditor()?.insertText('..=')
  'custom:insert-triple_singlequote': -> atom.workspace.getActiveTextEditor()?.insertText('\'\'\'')
  'custom:insert-low_or': -> atom.workspace.getActiveTextEditor()?.insertText(' |= ')
  'custom:insert-doubleless': -> atom.workspace.getActiveTextEditor()?.insertText(' << ')
  'custom:insert-doublemore': -> atom.workspace.getActiveTextEditor()?.insertText(' >> ')
  'custom:insert-triple_divide': -> atom.workspace.getActiveTextEditor()?.insertText('/// ')
  'custom:insert-triple_apostrophe': -> atom.workspace.getActiveTextEditor()?.insertText('```')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')

  'custom:insert-not_equalequal_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .!== ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-low_backslash_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .\\= ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-low_percent_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .%= ')
  'custom:insert-low_exponent_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .^= ')
  'custom:insert-low_and_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .&= ')
  'custom:insert-low_times_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .*= ')
  'custom:insert-low_divide_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' ./= ')
  'custom:insert-low_plus_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .+= ')
  'custom:insert-low_minus_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .-= ')
  'custom:insert-triple_equal_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .=== ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  'custom:insert-triple_doublequote': -> atom.workspace.getActiveTextEditor()?.insertText('"""')
  'custom:insert-low_or_broadcast': -> atom.workspace.getActiveTextEditor()?.insertText(' .|= ')
  'custom:insert-tripleless': -> atom.workspace.getActiveTextEditor()?.insertText(' <<< ')
  'custom:insert-triplemore': -> atom.workspace.getActiveTextEditor()?.insertText(' >>> ')
  'custom:insert-rust_doc': -> atom.workspace.getActiveTextEditor()?.insertText('//! ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')
  # 'custom:insert-empty': -> atom.workspace.getActiveTextEditor()?.insertText('  ')

  'custom:insert-greek_a': -> atom.workspace.getActiveTextEditor()?.insertText('α')
  'custom:insert-greek_b': -> atom.workspace.getActiveTextEditor()?.insertText('β')
  'custom:insert-greek_c': -> atom.workspace.getActiveTextEditor()?.insertText('ψ')
  'custom:insert-greek_d': -> atom.workspace.getActiveTextEditor()?.insertText('δ')
  'custom:insert-greek_e': -> atom.workspace.getActiveTextEditor()?.insertText('ε')
  'custom:insert-greek_f': -> atom.workspace.getActiveTextEditor()?.insertText('φ')
  'custom:insert-greek_g': -> atom.workspace.getActiveTextEditor()?.insertText('γ')
  'custom:insert-greek_h': -> atom.workspace.getActiveTextEditor()?.insertText('η')
  'custom:insert-greek_i': -> atom.workspace.getActiveTextEditor()?.insertText('ι')
  'custom:insert-greek_j': -> atom.workspace.getActiveTextEditor()?.insertText('ξ')
  'custom:insert-greek_k': -> atom.workspace.getActiveTextEditor()?.insertText('κ')
  'custom:insert-greek_l': -> atom.workspace.getActiveTextEditor()?.insertText('λ')
  'custom:insert-greek_m': -> atom.workspace.getActiveTextEditor()?.insertText('μ')
  'custom:insert-greek_n': -> atom.workspace.getActiveTextEditor()?.insertText('ν')
  'custom:insert-greek_o': -> atom.workspace.getActiveTextEditor()?.insertText('ο')
  'custom:insert-greek_p': -> atom.workspace.getActiveTextEditor()?.insertText('π')
  'custom:insert-greek_r': -> atom.workspace.getActiveTextEditor()?.insertText('ρ')
  'custom:insert-greek_s': -> atom.workspace.getActiveTextEditor()?.insertText('σ')
  'custom:insert-greek_t': -> atom.workspace.getActiveTextEditor()?.insertText('τ')
  'custom:insert-greek_u': -> atom.workspace.getActiveTextEditor()?.insertText('θ')
  'custom:insert-greek_v': -> atom.workspace.getActiveTextEditor()?.insertText('ω')
  'custom:insert-greek_x': -> atom.workspace.getActiveTextEditor()?.insertText('χ')
  'custom:insert-greek_y': -> atom.workspace.getActiveTextEditor()?.insertText('υ')
  'custom:insert-greek_z': -> atom.workspace.getActiveTextEditor()?.insertText('ζ')
  'custom:insert-where': -> atom.workspace.getActiveTextEditor()?.insertText('where ')

  'custom:insert-greek_capital_a': -> atom.workspace.getActiveTextEditor()?.insertText('Α')
  'custom:insert-greek_capital_b': -> atom.workspace.getActiveTextEditor()?.insertText('Β')
  'custom:insert-greek_capital_c': -> atom.workspace.getActiveTextEditor()?.insertText('Ψ')
  'custom:insert-greek_capital_d': -> atom.workspace.getActiveTextEditor()?.insertText('Δ')
  'custom:insert-greek_capital_e': -> atom.workspace.getActiveTextEditor()?.insertText('Ε')
  'custom:insert-greek_capital_f': -> atom.workspace.getActiveTextEditor()?.insertText('Φ')
  'custom:insert-greek_capital_g': -> atom.workspace.getActiveTextEditor()?.insertText('Γ')
  'custom:insert-greek_capital_h': -> atom.workspace.getActiveTextEditor()?.insertText('Η')
  'custom:insert-greek_capital_i': -> atom.workspace.getActiveTextEditor()?.insertText('Ι')
  'custom:insert-greek_capital_j': -> atom.workspace.getActiveTextEditor()?.insertText('Ξ')
  'custom:insert-greek_capital_k': -> atom.workspace.getActiveTextEditor()?.insertText('Κ')
  'custom:insert-greek_capital_l': -> atom.workspace.getActiveTextEditor()?.insertText('Λ')
  'custom:insert-greek_capital_m': -> atom.workspace.getActiveTextEditor()?.insertText('Μ')
  'custom:insert-greek_capital_n': -> atom.workspace.getActiveTextEditor()?.insertText('Ν')
  'custom:insert-greek_capital_o': -> atom.workspace.getActiveTextEditor()?.insertText('Ο')
  'custom:insert-greek_capital_p': -> atom.workspace.getActiveTextEditor()?.insertText('Π')
  'custom:insert-greek_capital_r': -> atom.workspace.getActiveTextEditor()?.insertText('Ρ')
  'custom:insert-greek_capital_s': -> atom.workspace.getActiveTextEditor()?.insertText('Σ')
  'custom:insert-greek_capital_t': -> atom.workspace.getActiveTextEditor()?.insertText('Τ')
  'custom:insert-greek_capital_u': -> atom.workspace.getActiveTextEditor()?.insertText('Θ')
  'custom:insert-greek_capital_v': -> atom.workspace.getActiveTextEditor()?.insertText('Ω')
  'custom:insert-greek_capital_x': -> atom.workspace.getActiveTextEditor()?.insertText('Χ')
  'custom:insert-greek_capital_y': -> atom.workspace.getActiveTextEditor()?.insertText('Υ')
  'custom:insert-greek_capital_z': -> atom.workspace.getActiveTextEditor()?.insertText('Ζ')
  'custom:insert-todo': -> atom.workspace.getActiveTextEditor()?.insertText('TODO: ')
  # 'custom:insert-bug': -> atom.workspace.getActiveTextEditor()?.insertText('BUG: ')

#------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------/ PANDOC EXPORTS /----------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------

MakePandocFile = (extention, args) ->
  [pandoc_args,cwd] = MakePandocArgs(extention,args)
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
