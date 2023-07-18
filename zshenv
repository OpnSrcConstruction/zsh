# Default_applications:

# Default-locations:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# Default BROWSERS:
# GUI:
export BROWSER="firefox"
export BROWSERCLI="w3m"
# Default text-editor.
export EDITOR="nvim"
# export PAGER="nvim"

# Exporting a sane default time-out for a sane vi-mode interaction.
export KEYTIMEOUT="18"

# Clipmenud options:
# export CM_SELECTIONS="primary clipboard"
# export CM_DEBUG=0
# export CM_OUTPUT_CLIP=1
# export CM_MAX_CLIPS=25
# export CM_HISTLENGTH=25
# export CM_LAUNCHER='fzf'

# Pass password-store location:
export PASSWORD_STORE_DIR='/home/zim/Public/Git_keybase/Pass-store/.password-store'
# Amount of time before pass clears the clipboard:
export PASSWORD_STORE_CLIP_TIME='240'

# initialize Zsh compinit to .config/zsh/
compinit -d /home/zim/.config/zsh/.zcompdump
# Change where Zsh stores it's history file
export HISTFILE='/home/zim/.config/zsh/.zhistory'

# Where my .vit config dir should/will go.
export VIT_DIR='~/.config/vit'
# Where my .taskrc config file shouldgo.
export TASKDATA='~/.config/task'
export TASKRC='~/.config/task/taskrc'

# My zoxide variables are below:
export _ZO_DATA_DIR='$HOME/.local/share/zoxide'
export _ZO_ECHO=1

# Inserted for the shell alias finder plugin,
# b/c I'm team verbosity should be default.
export ZSH_ALIAS_FINDER_AUTOMATIC=true

# exporting my dasht/dasht_man paths to be able to use dasht.
# export PATH=$PATH:~/DashT/dasht/bin
# export MANPATH=~/DashT/dasht/man:$MANPATH

# Sourcing my DashT Zsh completions:
# source ~/DashT/dasht/etc/zsh/completions.zsh

# Exporting a location for my Documentation-sets...
# export DASHT_DOCSETS_DIR='~/DashT/dasht/docsets'
