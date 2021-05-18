################################################################################

# init call
atreplinit() do repl

  # only on interactive
  if isinteractive()

    ################################################################################

    @eval const NanoKeys = Dict{Any,Any}(
      # move one word left
      "\x1b[1;3D" => "\eb",
      # move one word right
      "\x1b[1;3C" => "\ef",
    )

    ################################################################################

    try
      @eval import REPL
      @eval import REPL.LineEdit
    catch
      @warn "error while importing REPL"
    end

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

    try
      @eval using Debugger
    catch e
      @warn "Error initializing Debugger" exception = (e, catch_backtrace())
    end

    ################################################################################

    # julia specific environmental variables
    ENV["PAGER"] = "less";
    ENV["VISUAL"] = "subl";

    ################################################################################

  end

end

################################################################################
