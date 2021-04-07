# mac-setup

Repo for My Mac Setup

## Apps

```bash
- Xcode
- Slack
- Docker Desktop for Mac
- Chrome
- 1Password
- Krisp
- Zoom
- Github Desktop
- Sublime Text
- Notion
```

## Homebrew

```bash
xcode-select --install
sudo xcodebuild -license
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Favorites

iTerm and OhMyZSH:

```bash
brew update
brew cask install iterm2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

iTerm Customization:

- https://www.freecodecamp.org/news/how-to-configure-your-macos-terminal-with-zsh-like-a-pro-c0ab3f3c1156/ (best)
- https://github.com/romkatv/powerlevel10k
- https://www.freecodecamp.org/news/jazz-up-your-zsh-terminal-in-seven-steps-a-visual-guide-e81a8fd59a38/
- https://medium.com/ayuth/iterm2-zsh-oh-my-zsh-the-most-power-full-of-terminal-on-macos-bdb2823fb04c

iTerm Color Theme: `argonaut`

ZSH Config:

```bash
ZSH_THEME="powerlevel9k/powerlevel9k"
```

Theme Config:

```bash
defined POWERLEVEL9K_LEFT_PROMPT_ELEMENTS || POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
defined POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS || POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs)
```

Editor:

```bash
brew install --cask --appdir="/Applications" visual-studio-code
```

Tools:

```bash
brew install --cask --appdir="/Applications" virtualbox
brew install --cask --appdir="/Applications" vagrant
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
brew install --cask pgadmin4
brew install --cask notion

```

Configure fzf:

```bash
/usr/local/opt/fzf/install
source ~/.zshrc
# https://sourabhbajaj.com/mac-setup/iTerm/fzf.html
```

Postgresql:

```bash
sudo chown -R $(whoami) /usr/local/lib/pkgconfig
brew install postgresql
pg_ctl -D /usr/local/var/postgres start
pg_ctl -D /usr/local/var/postgres stop
```

Python3:

```bash
brew install python3
pip install numpy
pip install boto3
pip install requests
```

## AWS

- https://github.com/donnemartin/dev-setup#awesome-aws-

## Terminal

```bash
cd ~/
curl -O https://raw.githubusercontent.com/brandoncruz3/mac-setup/master/.bash_prompt
curl -O https://raw.githubusercontent.com/brandoncruz3/mac-setup/master/.bash_profile
curl -O https://raw.githubusercontent.com/brandoncruz3/mac-setup/master/.aliases
```
