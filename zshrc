# DESCRIPTION:
#   A simple zsh configuration that gives you 90% of the useful features that I use everyday.
#
# AUTHOR:
#   Geoffrey Grosenbach http://peepcode.com


# RVM
# if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

# https://github.com/sstephenson/rbenv/issues/239#issuecomment-7976802
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# Colors
autoload -U colors
colors
setopt prompt_subst

# Prompt
local smiley="%(?,%{$fg[green]%}☀%{$reset_color%},%{$fg[red]%}☁%{$reset_color%})"

PROMPT='
%~
${smiley}  %{$reset_color%}'

# RPROMPT='%{$fg[white]%} $(~/.rvm/bin/rvm-prompt)$(~/bin/git-cwd-info)%{$reset_color%}'

# Replace the above with this if you use rbenv

RPROMPT='%{$fg[white]%} $(cat ~/.rbenv/version)$(~/bin/git-cwd-info)%{$reset_color%}'

# RPROMPT='%{$fg[white]%} $(~/bin/git-cwd-info.rb)%{$reset_color%}'
# Show completion on first TAB
setopt menucomplete

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

for file in ~/.zsh-modules/*; do
  source $file
done
# Note the addition of ~bin for the zsh prompt stuff to work
export PATH=./bin:/usr/local/bin:~/bin:$PATH
# rbenv doesn't work without this: http://stackoverflow.com/questions/10940736/rbenv-not-changing-ruby-version

function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  python -m SimpleHTTPServer "$port"
}
