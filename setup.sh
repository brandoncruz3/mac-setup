#!/usr/bin/env bash

xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew install cask
brew install --cask iterm2

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

brew install --cask --appdir="/Applications" virtualbox
brew install --cask --appdir="/Applications" vagrant
brew install --cask --appdir="/Applications" visual-studio-code
brew install --appdir="/Applications" jq
brew install --appdir="/Applications" wget
brew install --appdir="/Applications" kubernetes-cli
brew install --appdir="/Applications" docker

brew install helm
brew install node
brew install openconnect
brew install oath-toolkit
brew install redis
brew install awscli
brew install aws-rotate-key
brew install elasticache-cli
brew install pre-commit gawk terraform-docs tflint tfsec coreutils checkov
brew install aws-sam-cli
brew install docker-compose
brew install ansible
brew install gh
brew install --cask pgadmin4
brew install --cask notion
brew install --cask oracle-jdk
brew install --cask alfred
brew install --cask sublime-text
brew install --cask zoom
brew install --cask flycut
brew install --cask google-drive
brew install --cask krisp
brew install --appdir="/Applications" go
brew install --cask multipass
brew install terraform packer
brew install --cask miro
brew install --cask obs
brew install code-server
brew install --cask insomnia
brew install --cask 1password
brew install --cask stretchly

source ~/.zshrc

brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono
echo "iTerm -> Preferences -> Profiles -> Text -> Font:"
echo "JetBrain Mono -> Regular -> 12"

git clone https://github.com/mbadolato/iTerm2-Color-Schemes ~/Downloads/iTerm2-Color-Schemes && cd Downloads/iTerm2-Color-Schemes && tools/import-scheme.sh schemes/*
echo "iTerm -> Preferences -> Profiles -> Colors -> Color Presets, Import:"
echo "~/Downloads/iTerm2-Color-Schemes/schemes/Argonaut.itermcolors" 

# get zsh config
curl --silent https://raw.githubusercontent.com/brandoncruz3/mac-setup/master/.zshrc --output ~/.zshrc

# get zsh powerlevel9k.zsh-theme
curl --silent https://raw.githubusercontent.com/brandoncruz3/mac-setup/master/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme --create-dirs --output ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme
