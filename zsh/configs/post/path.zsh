# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Remove the need for bundle exec ... or ./bin/...
# by adding ./bin to path if the current project is trusted
# Source: http://dance.computer.dance/posts/2015/02/making-chruby-and-binstubs-play-nice.html
function set_local_bin_path() {
  # Replace any existing local bin paths with our new one
  export PATH="${1:-""}`echo "$PATH"|sed -e 's,[^:]*\.git/[^:]*bin:,,g'`"
}

function add_trusted_local_bin_to_path() {
  if [[ -d "$PWD/.git/safe" ]]; then
    # We're in a trusted project directory so update our local bin path
    set_local_bin_path "$PWD/.git/safe/../../bin:"
  fi
}

add_trusted_local_bin_to_path

. /usr/local/etc/profile.d/z.sh

# deduplicate PATH
export -U PATH
