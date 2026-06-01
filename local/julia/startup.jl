####################################################################################################

# init call
atreplinit() do repl

  # only on interactive
  if isinteractive()

    ####################################################################################################

    try
      @eval import Chain: @chain
    catch err
      @warn "Error while importing Chain" err
    end

    ####################################################################################################

    try
      @eval import Pipe: @pipe
    catch err
      @warn "Error while importing Pipe" err
    end

    ####################################################################################################

    try
      @eval using Revise
    catch err
      @warn "Error initializing Revise" exception = (err, catch_backtrace())
    end

    ####################################################################################################

    try
      @eval using Debugger
    catch err
      @warn "Error initializing Debugger" exception = (err, catch_backtrace())
    end

    ####################################################################################################

    Timer(0) do _
        try
            @eval using OhMyREPL
        catch err
            @warn "Error while importing OhMyREPL" err
        end
    end

    ####################################################################################################

    # julia specific environmental variables
    ENV["PAGER"] = "less"
    ENV["VISUAL"] = "hx"

    ####################################################################################################

  end

end

####################################################################################################

# loaded modules
function loaded_modules()
  return filter(
    (name) -> typeof(eval(name)) <: Module && name != :Main,
    names(Main, imported = true),
  )
end

####################################################################################################

# frequency unicode barplot
function freqplot(values)
  table = freqtable(values)
  UnicodePlots.barplot(
    table.dicts[1] |> keys .|> string,
    table.array,
  )
end

####################################################################################################
