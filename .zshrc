# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=( 
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# Set-up icons for files/folders in terminal using lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias gcq="git commit -m"
# alias g++="g++-12"
bindkey -s ^f "tmux-sessionizer\n"

export PATH=$PATH:~/.local/bin
# export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/snapd/desktop/applications

export TERM=xterm-256color
export COLORTERM=truecolor
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export HELIX_RUNTIME=~/helix/runtime

# for keys
[[ ! -f ~/.profile ]] || source ~/.profile

# opencode
#
export PATH=/home/nazuko/.opencode/bin:$PATH

export PATH=/home/nazuko/bin:$PATH

if [[ -d ~/venv ]]; then
  source ~/venv/bin/activate 2>/dev/null || true
fi
