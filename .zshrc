# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$PATH:$HOME/.composer/vendor/bin/"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$PATH:$HOME/.nodebrew/current/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/yuki/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/yuki/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/yuki/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/yuki/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export ANYENV_ROOT="${HOME}/.local/opt/anyenv"
if [ -d $ANYENV_ROOT ]; then
  export PATH="${ANYENV_ROOT}/bin:${PATH}"
  eval "$(anyenv init -)"
  test -e "${PYENV_ROOT}/plugins/pyenv-virtualenv" && eval "$(pyenv virtualenv-init -)"
fi

eval "$(pyenv init -)"

export PKG_CONFIG_PATH="$(brew --prefix qt@5)/lib/pkgconfig:"

export PATH="${HOME}/.local/bin:${PATH}"
export PKG_CONFIG_PATH="${HOME}/.local/opt/protobuf/lib/pkgconfig:${PKG_CONFIG_PATH}"
export CMAKE_PREFIX_PATH="${HOME}/.local/opt/protobuf;$(brew --prefix qt@5);"
