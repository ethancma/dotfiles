if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/Users/ethanma/.oh-my-zsh"

# -- Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# -- Plugins
plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
history
colored-man-pages
web-search
)

# Automatically update oh-my-zsh
export UPDATE_ZSH_DAYS=14

source $ZSH/oh-my-zsh.sh

bindkey '^F' autosuggest-accept

# -- Aliases
# Shell
alias la="ls -a"
alias c=clear
alias desk="cd ~/Desktop"
alias python="python3"
alias pip="pip3"
alias vi="vim"
alias chmox=chmod +x

# System
alias finder="open -a Finder"
alias safari="open -a Safari"
alias spotify="open -a Spotify"
alias start="
open -a Safari
open -a Spotify
open -a Mail
open -a Discord"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"


# Config
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias vimconfig="cd $HOME/dotfiles/vim"

# -- Functions
function mkcd() {
    mkdir -p "$@" && cd "$@";
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
