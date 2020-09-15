
# ==========================
# ===  General settings  ===
# ==========================

# ==========================
# ===   aliases          ===
# ==========================

if [ -f $IANUS/shell/terminal/vernacular_aliases.sh ]
  source $IANUS/shell/terminal/vernacular_aliases.sh
end

# ==========================
# ===   Prompt           ===
# ==========================

starship init fish | source

# ==========================
# ===  McFly             ===
# ==========================

if test -r "/usr/local/opt/mcfly/mcfly.fish"
  source "/usr/local/opt/mcfly/mcfly.fish"
  mcfly_key_bindings
end

# ==========================
# ===  zoxide            ===
# ==========================

zoxide init fish | source

# ==========================

echo -n -e "\t"; echo "                         .                                           "
echo -n -e "\t"; echo "                          A       ;                                  "
echo -n -e "\t"; echo "                |   ,--,-/ \---,-/|  ,                               "
echo -n -e "\t"; echo "               _|\,'. /|      /|   `/|-.                             "
echo -n -e "\t"; echo "           \`.'    /|      ,            `;.                          "
echo -n -e "\t"; echo "          ,'\   A     A         A   A _ /| `.;                       "
echo -n -e "\t"; echo "        ,/  _              A       _  / _   /|  ;                    "
echo -n -e "\t"; echo "       /\  / \   ,  ,           A  /    /     `/|                    "
echo -n -e "\t"; echo "      /_| | _ \         ,     ,             ,/  \                    "
echo -n -e "\t"; echo "     // | |/ `.\  ,-      ,       ,   ,/ ,/      \/                  "
echo -n -e "\t"; echo "     / @| |@  / /'   \  \      ,              >  /|    ,--.          "
echo -n -e "\t"; echo "    |\_/   \_/ /      |  |           ,  ,/        \  ./' __:..       "
echo -n -e "\t"; echo "    |  __ __  |       |  | .--.  ,         >  >   |-'   /     `      "
echo -n -e "\t"; echo "  ,/| /  '  \ |       |  |     \      ,           |    /             "
echo -n -e "\t"; echo " /  |<--.__,->|       |  | .    `.        >  >    /   (              "
echo -n -e "\t"; echo "/_,' \\  ^  /  \     /  /   `.    >--            /^\   |             "
echo -n -e "\t"; echo "      \\___/    \   /  /      \__'     \   \   \/   \  |             "
echo -n -e "\t"; echo "       `.   |/          ,  ,                  /`\    \  )            "
echo -n -e "\t"; echo "         \  '  |/    ,       V    \          /        `-\            "
echo -n -e "\t"; echo "          `|/  '  V      V           \    \.'            \_          "
echo -n -e "\t"; echo "           '`-.       V       V        \./'\                         "
echo -n -e "\t"; echo "               `|/-.      \ /   \ /,---`\                            "
echo -n -e "\t"; echo "                /   `._____V_____V'                                  "
echo -n -e "\t"; echo "                           '     '                                   "
echo -n -e "\t"; echo "                                                                     "

# ==========================
