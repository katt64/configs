################################################################################
## Nostalgia zone
##
## Remeniscent of previous grml-zsh-config that I have gotten used to.
## I may remove this later when I've completely gotten used to oh-my-zsh's
## paradigm.

## Settings for umask
if (( EUID == 0 )); then
    umask 002
else
    umask 022
fi

## use the vi navigation keys (hjkl) besides cursor keys in menu completion
bindkey -M menuselect 'h' vi-backward-char        # left
bindkey -M menuselect 'k' vi-up-line-or-history   # up
bindkey -M menuselect 'l' vi-forward-char         # right
bindkey -M menuselect 'j' vi-down-line-or-history # bottom

## define word separators (for stuff like backward-word, forward-word, backward-kill-word,..)
WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>' # the default

## just type '...' to get '../..'
rationalise-dot() {
local MATCH
if [[ $LBUFFER =~ '(^|/| |	|'$'\n''|\||;|&)\.\.$' ]]; then
  LBUFFER+=/
  zle self-insert
  zle self-insert
else
  zle self-insert
fi
}
zle -N rationalise-dot
bindkey . rationalise-dot
# without this, typing a . aborts incremental history search
bindkey -M isearch . self-insert
bindkey '\eq' push-line-or-edit

## alert me if something failed
setopt printexitvalue

## Allow comments even in interactive shells
setopt interactivecomments

## ignore ~/.ssh/known_hosts entries
alias insecssh='ssh -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null" -o "PreferredAuthentications=keyboard-interactive"'

## get top 10 shell commands:
alias top10='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 10'

## Execute \kbd{./configure}
alias CO="./configure"

## Execute \kbd{./configure --help}
alias CH="./configure --help"

## Set a search path for the cd builtin
cdpath=(.. ~)

## Download a file and display it locally
uopen() {
    emulate -L zsh
    if ! [[ -n "$1" ]] ; then
        print "Usage: uopen \$URL/\$file">&2
        return 1
    else
        FILE=$1
        MIME=$(curl --head $FILE | \
               grep Content-Type | \
               cut -d ' ' -f 2 | \
               cut -d\; -f 1)
        MIME=${MIME%$'\r'}
        curl $FILE | see ${MIME}:-
    fi
}

## Memory overview
memusage() {
    ps aux | awk '{if (NR > 1) print $5;
                   if (NR > 2) print "+"}
                   END { print "p" }' | dc
}

## print hex value of a number
hex() {
    emulate -L zsh
    if [[ -n "$1" ]]; then
        printf "%x\n" $1
    else
        print 'Usage: hex <number-to-convert>'
        return 1
    fi
}
