# Personal Zsh configuration file. It is strongly recommended to keep all
# shell customization and configuration (including exported environment
# variables such as PATH) in this file or in files sourced from it.
#
# Documentation: https://github.com/romkatv/zsh4humans/blob/v5/README.md.

# Periodic auto-update on Zsh startup: 'ask' or 'no'.
# You can manually run `z4h update` to update everything.
zstyle ':z4h:' auto-update      'no'
# Ask whether to auto-update this often; has no effect if auto-update is 'no'.
zstyle ':z4h:' auto-update-days '28'

# Keyboard type: 'mac' or 'pc'.
zstyle ':z4h:bindkey' keyboard  'pc'

# Start tmux if not already in tmux.
# zstyle ':z4h:' start-tmux       command tmux -u new -A -D -t z4h

# Mark up shell's output with semantic information.
zstyle ':z4h:' term-shell-integration 'yes'

# Right-arrow key accepts one character ('partial-accept') from
# command autosuggestions or the whole thing ('accept')?
zstyle ':z4h:autosuggestions' forward-char 'partial-accept'

# Recursively traverse directories when TAB-completing files.
zstyle ':z4h:fzf-complete' recurse-dirs 'no'

# Enable direnv to automatically source .envrc files.
zstyle ':z4h:direnv'         enable 'no'
# Show "loading" and "unloading" notifications from direnv.
zstyle ':z4h:direnv:success' notify 'yes'

# Enable ('yes') or disable ('no') automatic teleportation of z4h over
# SSH when connecting to these hosts.
zstyle ':z4h:ssh:example-hostname1'   enable 'yes'
zstyle ':z4h:ssh:*.example-hostname2' enable 'no'
# The default value if none of the overrides above match the hostname.
zstyle ':z4h:ssh:*'                   enable 'no'

# Send these files over to the remote host when connecting over SSH to the
# enabled hosts.
zstyle ':z4h:ssh:*' send-extra-files '~/.nanorc' '~/.env.zsh'

# Clone additional Git repositories from GitHub.
#
# This doesn't do anything apart from cloning the repository and keeping it
# up-to-date. Cloned files can be used after `z4h init`. This is just an
# example. If you don't plan to use Oh My Zsh, delete this line.
z4h install ohmyzsh/ohmyzsh || return

# Install or update core components (fzf, zsh-autosuggestions, etc.) and
# initialize Zsh. After this point console I/O is unavailable until Zsh
# is fully initialized. Everything that requires user interaction or can
# perform network I/O must be done above. Everything else is best done below.
z4h init || return

# Extend PATH.
path=(/home/zim/.local/share/bob/nvim-bin ~/bin $path)

# Export environment variables.
export GPG_TTY=$TTY

# Source additional local files if they exist.
z4h source ~/.config/zsh/zshenv
z4h source ~/.config/zsh/zsh_aliases
z4h source /mnt/d/Scripts/Zsh/singlechar.plugin.zsh
z4h source /mnt/d/Scripts/Zsh/git-flow.plugin.zsh
z4h source /mnt/d/Scripts/Zsh/extract.plugin.zsh
# Moved to the specific source b/c x to extract alias conflicted with my close;
# so I changed it to "X".

# Use additional Git repositories pulled in with `z4h install`.
#
z4h load   ohmyzsh/ohmyzsh/plugins/vi-mode                 # See Readme.md @ ~/.cache/zsh4humans/v5/
z4h load   ohmyzsh/ohmyzsh/plugins/emoji-clock             # Type emoj-clock to get a clock rounded up to the quarter of the hour.
z4h load   ohmyzsh/ohmyzsh/plugins/jump                    # Manually add named buffer mark(targets), to manually jump to.
z4h load   ohmyzsh/ohmyzsh/plugins/fancy-ctrl-z            # ctrl-z to slip out, or right back into nvim as necessary.
z4h load   ohmyzsh/ohmyzsh/plugins/zsh-navigation-tools    # use n-<tab> to find the znt tools.
z4h load   ohmyzsh/ohmyzsh/plugins/fd                      # Rust version of find now w/ auto-completion.
z4h load   ohmyzsh/ohmyzsh/plugins/cd                      # Turns cp into rsync, for safety, progress, & maybe some security.
z4h load   ohmyzsh/ohmyzsh/plugins/nmap                    # Adds a ton of nmap aliases.
z4h load   ohmyzsh/ohmyzsh/plugins/chucknorris             # type chuck | chuck_cow for a chuck norris fortune.
z4h load   ohmyzsh/ohmyzsh/plugins/taskwarrior             # Adds taskwarrior completion.
z4h load   ohmyzsh/ohmyzsh/plugins/ripgrep                 # Adds rg auto completion, but no rg alias :(~)
z4h load   ohmyzsh/ohmyzsh/plugins/aliases                 # use acs & acs --groups to list aliases. Might alias to "a".
z4h load   ohmyzsh/ohmyzsh/plugins/qrcode                  # A simple qrcode gen. from shell(qrcode|qrsvg) via curl.
z4h load   ohmyzsh/ohmyzsh/plugins/ubuntu                  # Adds a ton of apt aliases...
z4h load   ohmyzsh/ohmyzsh/plugins/mosh                    # Adds mosh hostname autocompletion.
z4h load   ohmyzsh/ohmyzsh/plugins/man                     # Esc + man == insert man before last command.
z4h load   ohmyzsh/ohmyzsh/plugins/pass                    # Adds auto-complete to pass.
z4h load   ohmyzsh/ohmyzsh/plugins/universalarchiver       # to use ua <format> <files>. Formats below.
z4h load   ohmyzsh/ohmyzsh/plugins/rsync                   # Adds useful rsync aliases.
z4h load   ohmyzsh/ohmyzsh/plugins/systemd                 # Helpful sc(systemctl)/scu(sc --user) aliases.
z4h load   ohmyzsh/ohmyzsh/plugins/ufw                     # a more complete ufw auto-complete.
z4h load   ohmyzsh/ohmyzsh/plugins/adb                     # Auto-complete for the Android-DeBugging Shell.
z4h load   ohmyzsh/ohmyzsh/plugins/httpie                  # Adds auto-completion for the httpie api cli shell.
z4h load   ohmyzsh/ohmyzsh/plugins/copypath                # copies the absolute path of a path|file to the system clipboard.
# z4h load   ohmyzsh/ohmyzsh/plugins/zoxide                  # z & zi are the keys. zi has fzf support. ;D
# z4h load   ohmyzsh/ohmyzsh/plugins/per-directory-history   # Per directory command history.
# z4h load   ohmyzsh/ohmyzsh/plugins/safe-paste              # Adds an extra step before a pste will execute.
# z4h load   ohmyzsh/ohmyzsh/plugins/fzf
# z4h load   ohmyzsh/ohmyzsh/plugins/rust                    # Adds rustc(compiler), & cargo/rustup pkg mgrs.
# formats == 7z,bz2,gz,lzma,lzo,rar,tar,tbz/tar.bz2,tgz/tar.gz,tlz/tar.lzma,txz/tar.xz,tZ/tar.Z,xz,Z,zip,zst...
# z4h load   ohmyzsh/ohmyzsh/plugins/bgnotify  Didin't work on wsl2...
# z4h source ohmyzsh/ohmyzsh/lib/diagnostics.zsh           # source an individual file
# z4h load   ohmyzsh/ohmyzsh/plugins/web-search  Seamed broken and abandoned.
# z4h load   ohmyzsh/ohmyzsh/plugins/thefuck  # conflicts with the sudo program. <esc><esc>

# Git oh-my-zsh plugins:
z4h load   ohmyzsh/ohmyzsh/plugins/gh                      # Completion 4 the gh-cli.
z4h load   ohmyzsh/ohmyzsh/plugins/git                     # Contains a mega-ton of aliases for git cli.
z4h load   ohmyzsh/ohmyzsh/plugins/git-extras              # required apt install git-extras.
z4h load   ohmyzsh/ohmyzsh/plugins/gitignore               # Check for .gitignore language templates. uses the gi alias.
z4h load   ohmyzsh/ohmyzsh/plugins/gitfast                 # Adds better bash-like zsh git auto-completion.
z4h load   ohmyzsh/ohmyzsh/plugins/github                  # Adds a wrapper around hub.
z4h load   ohmyzsh/ohmyzsh/plugins/git-hubflow             # Adds some aliases for git-flow+hub.
z4h load   ohmyzsh/ohmyzsh/plugins/git-escape-magic        # Auto-escaping meta-chars.
z4h load   ohmyzsh/ohmyzsh/plugins/tig                     # Adds aliases tis(status)/til(log)/tib(blame).

# Define key bindings.
z4h bindkey z4h-backward-kill-word  Ctrl+Backspace     Ctrl+H
z4h bindkey z4h-backward-kill-zword Ctrl+Alt+Backspace

z4h bindkey undo Ctrl+/ Shift+Tab  # undo the last command line change
z4h bindkey redo Alt+/             # redo the last undone command line change

z4h bindkey z4h-cd-back    Alt+Left   # cd into the previous directory
z4h bindkey z4h-cd-forward Alt+Right  # cd into the next directory
z4h bindkey z4h-cd-up      Alt+Up     # cd into the parent directory
z4h bindkey z4h-cd-down    Alt+Down   # cd into a child directory

# Autoload functions.
autoload -Uz zmv

# Define functions and completions.
function md() { [[ $# == 1 ]] && mkdir -p -- "$1" && cd -- "$1" }
compdef _directories md

# Define named directories: ~w <=> Windows home directory on WSL.
[[ -z $z4h_win_home ]] || hash -d w=$z4h_win_home

# # Define aliases.
alias tree='tree -a -I .git'

# Add flags to existing aliases.
# alias ls="${aliases[ls]:-ls} -A"

# Set shell options: http://zsh.sourceforge.net/Doc/Release/Options.html.
setopt glob_dots     # no special treatment for file names with a leading dot
# setopt no_auto_menu  # require an extra TAB press to open the completion menu
# Start Docker daemon automatically when logging in if not running.

# Setting a cmd 1 run the ts tunnel.
alias tsu'sudo tailscaled > /dev/null 2>&1 &'

alias ssg='ssh-add ~/.ssh/ssh-rsa'

RUNNING=`ps aux | grep tailscaled | grep -v grep`
if [ -z "$RUNNING" ]; then
    sudo tailscaled  > /dev/null 2>&1 &
    disown
    sleep 30
    sudo tailscale up --ssh
fi

eval $(ssh-agent -s)

# source ~/.xsh

