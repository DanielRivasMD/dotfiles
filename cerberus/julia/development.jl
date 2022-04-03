####################################################################################################

# init call
atreplinit() do repl

  # only on interactive
  if isinteractive()

    ####################################################################################################

    try
      @eval import Chain: @chain
    catch e
      @warn "error while importing Chain" e
    end

     ####################################################################################################

    try
      @eval import Pipe: @pipe
    catch e
      @warn "error while importing Pipe" e
    end

    ####################################################################################################

    try
      @eval using Revise
    catch e
      @warn "Error initializing Revise" exception = (e, catch_backtrace())
    end

    ####################################################################################################

    try
      @eval using Debugger
    catch e
      @warn "Error initializing Debugger" exception = (e, catch_backtrace())
    end

    ####################################################################################################

    # julia specific environmental variables
    ENV["PAGER"] = "less";
    ENV["VISUAL"] = "subl";

    ####################################################################################################

  end

end

####################################################################################################
