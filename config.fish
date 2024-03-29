##view
set -g theme_display_date yes
set -g theme_date_format "+%F %H:%M"
set -g theme_display_git_default_branch yes
set -g theme_color_scheme dark

## alias
alias vim=nvim
alias vi=vim
alias rm=trash-put
alias ll='ls -lh'
alias la='ls -aA'
alias n='vim'

## set
set LESSHISTFILE /dev/null
set EDITOR vim

## fzf
set FZF_LEGACY_KEYBINDINGS 1
set FZF_DEFAULT_COMMAND 'fd -t f -I -H -E ".git" -E ".cache" . ~'
set FZF_DEFAULT_OPTS '--preview "bat -nf {}" --reverse --border --height 40%'
set FZF_FIND_FILE_COMMAND $FZF_DEFAULT_COMMAND
set FZF_OPEN_COMMAND $FZF_DEFAULT_COMMAND
set FZF_CD_COMMAND $FZF_DEFAULT_COMMAND

## conda
set PATH /opt/miniconda3/bin $PATH
source (conda info --root)/etc/fish/conf.d/conda.fish

## yay & fisher list
yay -Qeq    > ~/.dotfiles/yay.list
fisher list > ~/.dotfiles/fisher.list
