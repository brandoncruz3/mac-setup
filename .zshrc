zstyle ':omz:update' mode auto

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
alias-finder
asdf
aws
brew
colorize
common-aliases
cp
docker-compose
git
history
httpie
jfrog
jsontools
lol
rsync
terraform
vscode
macos
zsh-autosuggestions
zsh-syntax-highlighting
sudo
dirhistory
fast-syntax-highlighting
zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=~/mct/operations/bin:$PATH
export PROD=https://www.medicare.gov/api/v1/data/plan-compare
export IMP=https://imp.medicare.gov/api/v1/data/plan-compare
export TEST=https://test.medicare.gov/api/v1/data/plan-compare
export DEV=https://dev.medicare.gov/api/v1/data/plan-compare
export LOCAL=http://localhost:8080
export IMP_HPMS=https://imp-api.mct.backends.cms.gov/hpms
export IMP_ANALYTICS=https://imp-api.mct.backends.cms.gov/analytics
alias ateammfa="~/adhoc/infrastructure/bin/mfa.sh"

# check mctapi status endpoints
alias imp-status="mct curl --silent $IMP/status | jq"
alias prod-status="mct curl --silent $PROD/status | jq"
alias test-status="mct curl --silent $TEST/status | jq"


# alias mfa="op item get 'CMS AWS Console' --field type=otp --format json | jq -r .totp| mct mfa"

export JIRA_API_TOKEN=<redacted>
export JIRA_URL=https://jira.cms.gov
export JIRA_AUTH_TYPE=bearer
autoload -U compinit; compinit
export GITHUB_TOKEN=<redacted>

# easier to type than docker compose
alias dc="docker compose"

# run commands within docker compose
alias dmc="dc run --rm mctapi"
alias dcb="dc up -d --build" # Detached Mode & Build images before starting containers
alias dcu="dc up"
alias dcd="dc down"
alias dcr="dcd && dcu" # Restart stack
alias dsp="docker system prune -a" # Remove all unused images not just dangling ones
alias dpsa="docker ps -a"
alias dpas='dpsa'

alias k="kubectl"

# make a directory and cd into it
function mkcd {
    mkdir "$1" && cd "$1" || exit
}

alias search_history="history | grep"
alias dprune='docker system prune --all --volumes --force'
alias dspace='docker system df'
alias di="docker images --format '{{.Size}}\t{{.Repository}}\t{{.Tag}}\t{{.ID}}' | sed 's/ //' | sort -h -r | column -t"

alias myip="curl ipecho.net/plain ; echo"

eval "$(direnv hook zsh)"

eval $(thefuck --alias)

export JAVA_HOME=`/usr/libexec/java_home -v 17.0`

export PATH="/Users/brandoncruz/.local/bin:$PATH"

export CMS_EUA_ID=COUE

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# added by Pew
source "$(pew shell_config)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/brandoncruz/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/brandoncruz/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/brandoncruz/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/brandoncruz/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH
autoload -U compinit; compinit

export NVM_DIR="$HOME/.nvm"
 [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
 [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
autoload -U compinit; compinit

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/tfschema tfschema

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh