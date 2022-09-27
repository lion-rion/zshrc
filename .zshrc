# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$PATH:$HOME/.composer/vendor/bin/"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$PATH:$HOME/.nodebrew/current/bin

eval "$(pyenv init -)"

export PKG_CONFIG_PATH="$(brew --prefix qt@5)/lib/pkgconfig:"

export PATH="${HOME}/.local/bin:${PATH}"
export PKG_CONFIG_PATH="${HOME}/.local/opt/protobuf/lib/pkgconfig:${PKG_CONFIG_PATH}"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#グローバルIPアドレス
alias gip='curl globalip.me'
#ローカルIPアドレス
alias lip='ifconfig | grep 192 | awk '\''/inet/ { print $2 }'\'''


export CMAKE_PREFIX_PATH="${HOME}/.local/opt/protobuf;$(brew --prefix qt@5)"

