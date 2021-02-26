#!/usr/bin/env fish

################################################################################

function __call_navi
    navi --print
end

function navi-widget -d "Show cheat sheets"
  begin
    set ttysettings (stty -g)
    stty sane
    __call_navi | perl -pe 'chomp if eof' | read -lz result
    and commandline -- $result

    stty $ttysettings
  end
  commandline -f repaint
end

bind \cn navi-widget
if bind -M insert > /dev/null 2>&1
  bind -M insert \cn navi-widget
end

################################################################################
