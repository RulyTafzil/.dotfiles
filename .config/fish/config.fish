#Defaults loaded from cachyos
source /usr/share/cachyos-fish-config/cachyos-config.fish

#add dotfiles command to handle git repo for your config files
function dotfiles
    git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end


#added for ssh
set -Ux SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket

#added for doom emacs
set PATH $PATH ~/.config/emacs/bin

#added for NPM
set -Ux PATH $HOME/.local/bin $PATH

# Load all saved ssh keys
# /usr/bin/ssh-add

# Set the emoji width for iTerm
# set -g fish_emoji_width 2

# Hide the fish greeting
set fish_greeting ""

# # Fish syntax highlighting
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

# # Initialize Starship
starship init fish | source

#end
