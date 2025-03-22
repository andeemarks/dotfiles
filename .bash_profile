# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bash_profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.pre.bash"
#!/bin/bash

eval "$(hub alias -s)"

# opam configuration
test -r /home/amarks/.opam/opam-init/init.sh && . /home/amarks/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash"
