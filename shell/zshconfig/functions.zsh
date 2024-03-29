# rerun tests
function rspec_n() {
  if [[ $1 -gt 1 && "$2" != "" ]]
  then 
    for i in {1..$1}; do bundle exec rspec $2; done
  else
    echo 'Make sure first argument is a num greater than 1 and second is a string'
  fi
}

function pretty_csv {
  column -t -s, -n "$@" | less -F -S -X -K
}

function bootstrap_dev {
  bundle exec rails db:drop db:create db:migrate
  bundle exec rails sync
  bundle exec rails bootstrap
}

# ripped from https://github.com/junegunn/fzf/wiki/Examples#command-history
function fh {
  print -z $(history | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}

# add local binfile to path for script storage
if [ -d "$HOME/bin" ] ; then
  export PATH="$HOME/bin:$PATH"
fi
