#!/bin/bash

giturl="https://raw.githubusercontent.com/vishalapte/foundation/main"

# echo "Run this command from the prompt"
# echo '/bin/bash -c "$(curl -fsSL '${giturl}'/shell/copy_shell_scripts.sh)"'

for f in bash_login bash_aliases qux_macosx qux_images qux_python; do
  if [[ -f $HOME/.${f} ]]; then
    echo "Found. Not copying ${f}"
  else
    echo "Not found. Copying ${f}"
    curl -fsSL ${giturl}/shell/${f} > $HOME/.${f}
  fi
done
