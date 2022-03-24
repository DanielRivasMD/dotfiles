################################################################################

# init call
atreplinit() do repl

  # only on interactive
  if isinteractive()

    ################################################################################

    try
      @eval using OhMyREPL
    catch e
      @warn "error while importing OhMyREPL" e
    end

    ################################################################################

    try
      @eval import Chain: @chain
    catch e
      @warn "error while importing Chain" e
    end

     ################################################################################

    try
      @eval import Pipe: @pipe
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

# loaded modules
function loadedModules()
  return filter((χ) -> typeof(eval(χ)) <: Module && χ != :Main, names(Main, imported = true))
end

################################################################################

# R which
# TODO: finish

################################################################################
