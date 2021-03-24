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
brew install --build-from-source fzf
brew install --appdir="/Applications" kubernetes-cli
brew install --appdir="/Applications" docker

brew install node
brew install openconnect
brew install oath-toolkit
brew install redis
brew install aws
brew install awscli
brew install aws-rotate-key
brew install elasticache-cli
brew install pre-commit gawk terraform-docs tflint tfsec coreutils checkov
brew install aws-sam-cli
brew install docker-compose
brew install ansible

/usr/local/opt/fzf/install
source ~/.zshrc

brew install --appdir="/Applications" go
brew install --cask multipass

brew install terraform packer

brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono
echo "iTerm -> Preferences -> Profiles -> Text -> Font:"
echo "JetBrain Mono -> Regular -> 12"

git clone https://github.com/mbadolato/iTerm2-Color-Schemes ~/Downloads/iTerm2-Color-Schemes
echo "iTerm -> Preferences -> Profiles -> Colors -> Color Presets, Import:"
echo "~/Downloads/iTerm2-Color-Schemes/schemes/Argonaut.itermcolors" 

# get zsh config
curl --silent https://raw.githubusercontent.com/brandoncruz3/mac-setup/master/.zshrc --output ~/.zshrc

# get zsh powerlevel9k.zsh-theme
curl --silent https://raw.githubusercontent.com/brandoncruz3/mac-setup/master/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme --create-dirs --output ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme
