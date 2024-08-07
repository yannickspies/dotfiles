set fish_greeting ""

set -gx EDITOR nvim

set -Ux fish_user_paths $fish_user_paths ~/.local/bin

if type -q eza
    alias ll "eza -l -g --icons"
    alias lla "ll -a"
end

set -gx PNPM_HOME "/home/yspies/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
