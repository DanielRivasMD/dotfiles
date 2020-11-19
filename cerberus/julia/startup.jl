################################################################################

import REPL
import REPL.LineEdit

################################################################################

const NanoKeys = Dict{Any,Any}(
  # move one word left
  "\x1b[1;3D" => "\eb",
  # move one word right
  "\x1b[1;3C" => "\ef",
)

################################################################################

# init call
atreplinit() do repl

  # only on interactive
  if isinteractive()

    ################################################################################

    repl.interface = REPL.setup_interface(repl; extra_repl_keymap = NanoKeys)

    ################################################################################

    try
      @eval using OhMyREPL
    catch e
      @warn "error while importing OhMyREPL" e
    end

    ################################################################################

    try
      @eval using Pipe
    catch e
      @warn "error while importing Pipe" e
    end

    ################################################################################

    try
      @eval using Revise
    catch e
      @warn "Error initializing Revise" exception = (e, catch_backtrace())
    end

    ################################################################################

  end

end

################################################################################
