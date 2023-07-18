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
# compinit -d /home/zim/.config/zsh/.zcompdump
# Change where Zsh stores it's history file
# export HISTFILE='/home/zim/.config/zsh/.zhistory'
