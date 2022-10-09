# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/sbin:$PATH"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH="$PATH:$HOME/.composer/vendor/bin/"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$PATH:$HOME/.nodebrew/current/bin

eval "$(pyenv init -)"

export PKG_CONFIG_PATH="$(brew --prefix qt@5)/lib/pkgconfig:"

export PATH="${HOME}/.local/bin:${PATH}"
export PKG_CONFIG_PATH="${HOME}/.local/opt/protobuf/lib/pkgconfig:${PKG_CONFIG_PATH}"


####コマンドのsyntax設定####
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
####grc initial####
[[ -s "/usr/local/etc/grc.zsh" ]] && source /usr/local/etc/grc.zsh
########alias設定##########
#grc alias
alias ping='grc ping'
alias ifconfig='grc ifconfig'
alias make='grc make'
alias ps='grc ps'
alias netstat='grc netstat'
#色付きcatコマンド
alias cat='ccat'
#ディレクトリをツリー表示
alias tree='exa -T'
#色付きlsコマンド
alias ls='exa --icons'
#グローバルIPアドレス
alias gip='curl globalip.me'
#ローカルIPアドレス
alias lip='ifconfig | grep -e 172 -e 192 | awk '\''/inet/ { print $2 }'\'''

#####各種aliasの設定に必要なパッケージのインストールコマンド#####
#brew install ccat
#brew install exa
#brew install grc


#############################
#
export CMAKE_PREFIX_PATH="${HOME}/.local/opt/protobuf;$(brew --prefix qt@5)"

#golang
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH:bin
