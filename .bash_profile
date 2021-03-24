# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# http://lpetr.org/blog/archives/preserve-bash-history
export HISTSIZE=50000
export HISTFILESIZE=50000
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

export PATH=~/mct/operations/bin:$PATH
# AWS Configuration
export AWS_PROFILE=moss-mct
export AWS_LONGTERM_PROFILE=moss-mct-long-term
export AWS_DEFAULT_REGION="${AWS_DEFAULT_REGION:-us-east-1}"

# Relative path to checked out copy of MCT API (used for some helper scripts)
export MCTAPI_ROOT=../api

# Relative path to checked out copy of MCT Frontend (used for some helper scripts)
export MCTFE_ROOT=../frontend
