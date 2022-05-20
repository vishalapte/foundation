if [[ $OSTYPE == darwin* ]]; then
  if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  # Install Node.js
  brew ls --versions node || brew install node
fi

echo "node -v = $(node -v)"

# Update Node Package Manager (npm)
npm update -g npm
echo "npm -v = $(npm -v)"

# Grunt CLI
npm install -g grunt-cli

# Vue
npm install -g vue
npm install -g @vue/cli
