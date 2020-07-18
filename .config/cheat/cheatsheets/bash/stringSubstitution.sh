
# string substitution
newVar=${oldVar/<pattern>/<replace>}

# global string substitution
newVar=${oldVar//<pattern>/<replace>}

# applied to blank file names
for f in *\ *; do mv "$f" "${f// /_}"; done
