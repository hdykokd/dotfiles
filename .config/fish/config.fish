set fish_plugins theme peco git brew peco z

# PATH
set -U fish_user_paths $fish_user_paths /usr/local/bin

## Rust
set -U fish_user_paths $fish_user_paths $HOME/.cargo/bin

## pyenv
set -x PATH $HOME/.pyenv/bin $PATH

## GO
set -Ux GOPATH $HOME/go
set -U fish_user_paths $fish_user_paths $GOPATH/bin

# locale
set -Ux LC_ALL ja_JP.UTF-8

# alias
balias g git
balias nr "npm run"

function fish_user_key_bindings
  bind \cr peco_select_history
  bind \c] peco_select_ghq_repository
end

. (pyenv init - | psub)

status --is-interactive; and source (pyenv virtualenv-init -|psub)

# defaults write -g InitialKeyRepeat -int 12 # 180ms
# defaults write -g KeyRepeat -int 1 # 15ms
# defaults write -g com.apple.trackpad.scaling -float 2
# defaults write NSGlobalDoMain AppleShowAllExtensions -bool true

