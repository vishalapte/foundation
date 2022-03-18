if [[ $OSTYPE != darwin* ]]; then
  { 
    echo "This script is built for darwin*. Exiting."
    exit 1;
  }
fi

if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Notes
# brew remove --force $(brew list --formula)

# python 3.10
brew ls --versions python@3.10 || brew install python@3.10
brew unlink python@3.10
# python 3.9
brew ls --versions python@3.9 || brew install python@3.9
brew unlink python@3.9
# python 3.8
brew ls --versions python@3.8 || brew install python@3.8
brew link --force --overwrite python@3.8

packages=(
  # Utilities
  tree
  # Databases
  mysql
  influxdb
  graphviz
  redis
  # Media
  imagemagick
  exiftool
  ffmpeg
  youtube-dl
  # MILP
  glpk
)

for package in "${packages[@]}"; do
  brew ls --versions $package || brew install $package
done

brew cleanup
