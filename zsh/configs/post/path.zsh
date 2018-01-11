# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

. /usr/local/etc/profile.d/z.sh

eval "$(direnv hook zsh)"

# deduplicate PATH
export -U PATH
