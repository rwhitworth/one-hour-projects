# Bash getopt long options
Bash does not natively support using long options (--long vs -l) with its built-in getopt command.  The external getopts (note the extra 's') command isn't portable, doesn't always exist on a given system, and has gotchas of its own.  So I created a pure bash script that simulates (or fakes) supporting long options on the commandline.  All the heavy lifting is still done via bash's getopt, so hopefully adding this snippet to existing code will not break anything and will add flexability.

Supporting documentation:
<a href="http://stackoverflow.com/questions/402377/using-getopts-in-bash-shell-script-to-get-long-and-short-command-line-options">Bash</a> <a href="http://stackoverflow.com/questions/4180880/how-to-support-both-short-and-long-options-at-the-same-time-in-bash">doesn't</a> <a href="http://stackoverflow.com/questions/29955757/how-to-pass-a-long-option-to-a-bash-script">natively</a> <a href="http://unix.stackexchange.com/questions/62950/getopt-getopts-or-manual-parsing-what-to-use-when-i-want-to-support-both-shor">support</a> long commandline options.

