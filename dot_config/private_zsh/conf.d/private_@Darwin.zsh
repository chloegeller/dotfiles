#!/usr/bin/env zsh

[ $(uname) = "Darwin" ] || exit

#: command-not-found, explicitly on MacOS
#: https://github.com/Homebrew/homebrew-command-not-found
_handler="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
[ -f "${_handler}" ] && source "${_handler}"
unset _handler

PATH="/Users/chloegeller/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/chloegeller/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/chloegeller/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/chloegeller/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/chloegeller/perl5"; export PERL_MM_OPT;
