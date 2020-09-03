atreplinit() do repl

  try
    @eval using OhMyREPL
  catch e
    @warn "error while importing OhMyREPL" e
  end

  try
    @eval using Pipe
  catch e
    @warn "error while importing Pipe" e
  end

end
