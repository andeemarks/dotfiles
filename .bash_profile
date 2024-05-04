# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bash_profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.pre.bash"
#!/bin/bash

export PATH='/home/amarks/.luarocks/bin:/usr/local/bin:/home/amarks/.nvm/versions/node/v8.9.4/bin:/usr/local/go/bin:/home/amarks/bin:/home/amarks/.local/bin:/usr/local/sbin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'

eval "$(hub alias -s)"

export PATH="$HOME/.luarocks/bin:$PATH"
export PATH=/home/amarks/.cache/rebar3/bin:$PATH

. "$HOME/.cargo/env"
export PATH="$PATH:/usr/lib/dart/bin"

# opam configuration
test -r /home/amarks/.opam/opam-init/init.sh && . /home/amarks/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash"

export PATH=$PATH:/home/amarks/.nvm/versions/node/v18.10.0/bin

