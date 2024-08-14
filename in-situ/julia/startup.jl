####################################################################################################

# init call
atreplinit() do repl

  # only on interactive
  if isinteractive()

    ####################################################################################################

    try
      @eval using OhMyREPL
    catch ε
      @warn "error while importing OhMyREPL" ε
    end

    ####################################################################################################

    try
      @eval import Chain: @chain
    catch ε
      @warn "error while importing Chain" ε
    end

     ####################################################################################################

    try
      @eval import Pipe: @pipe
    catch ε
      @warn "error while importing Pipe" ε
    end

    ####################################################################################################

    try
      @eval using Revise
    catch ε
      @warn "Error initializing Revise" exception = (ε, catch_backtrace())
    end

    ####################################################################################################

    try
      @eval using Debugger
    catch ε
      @warn "Error initializing Debugger" exception = (ε, catch_backtrace())
    end

    ####################################################################################################

    # julia specific environmental variables
    ENV["PAGER"] = "less";
    ENV["VISUAL"] = "hx";

    ####################################################################################################

  end

end

####################################################################################################

# loaded modules
function loadedModules()
  return filter((χ) -> typeof(eval(χ)) <: Module && χ != :Main, names(Main, imported = true))
end

####################################################################################################

# frecuency unicode barplot
function freqplot(ν)
  ψ = freqtable(ν)
  UnicodePlots.barplot(
    ψ.dicts[1] |> keys .|> string,
    ψ.array,
  )
end

####################################################################################################
