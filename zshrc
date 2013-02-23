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
# setopt menucomplete

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# auto correct commands
setopt correctall

# enable to don't have to type cd
setopt autocd
setopt auto_cd
cdpath=($HOME/Dropbox)

# extended globbing queries such as cp ^*.(tar|bz2|gz) work
setopt extendedglob

for file in ~/.zsh-modules/*; do
  source $file
done
# Note the addition of ~bin for the zsh prompt stuff to work
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH
export PATH=./bin:$PATH
# rbenv doesn't work without this: http://stackoverflow.com/questions/10940736/rbenv-not-changing-ruby-version

function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  python -m SimpleHTTPServer "$port"
}
