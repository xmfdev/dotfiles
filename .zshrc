# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/.
# Custom plugins may be added to $ZSH_CUSTOM/plugins/.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration ------------------------------------------------------------

# Export variables.
export LANG=en_US.UTF-8
export BAT_THEME="Catppuccin Mocha"

# Preferred editor for local and remote sessions.
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Enable vi mode.
bindkey -v

# Enable fzf.
eval "$(fzf --zsh)"

# Aliases.
alias vim="nvim"
alias l="eza --color=always --all --long --git --icons=always"
alias ll="eza --color=always --all --long --git --icons=always --tree --level=2"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
    fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion.
_fzf_compgen_dir() {
    fd --type=d --hidden --exclude .git . "$1"
}

show_file_or_dir_preview="
if [ -d {} ]; then
    eza --tree --color=always {} | head -200
else
    bat -n --color=always --line-range :500 {}
fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

_fzf_comprun() {
    local command=$1
    shift

    case "$command" in
        cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
        export|unset) fzf --preview "eval 'echo \${}'"         "$@" ;;
        ssh)          fzf --preview 'dig {}'                   "$@" ;;
        *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
    esac
}

