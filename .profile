# examples how to export to path
# export PATH=~/bin:PATH"$PATH"
# export PATH=${PATH}:${HOME}/bin
# export PATH=${PATH}:
# export to path enviroment
export PATH="$HOME/bin:/usr/lib/ccache/bin/:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/opt/bin:/usr/bin/core_perl:/usr/games/bin:$PATH"
export PATH=${PATH}:${HOME}/.local/bin
export PATH=${PATH}:${HOME}/.cargo/bin
export PATH=${PATH}:${HOME}/.local/share/gem/ruby/3.0.0/bin
export PATH=${PATH}:${HOME}/.local/share/bin
export PATH=${PATH}:/var/lib/flatpak/exports/bin

# pnpm
export PNPM_HOME="/home/oryvny/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# history settings
export HISTCONTROL=ignorespace:ignoredups
export HISTSIZE=50000
export SAVEHIST=10000

# POSIX Character Classes
export LANG=POSIX

# sets default permissions for newly created files and folders
umask 0002

setxkbmap -layout us -variant alt-intl

# alias
alias c="clear"
alias cd..="cd .."
alias curl="curl --user-agent 'noleak'"
alias l="ls -ahls --color=auto"
alias r="reset"
alias shred="shred -zf"
alias sl="ls --color=auto"
alias vi="vim"
alias ls="ls --color=auto"
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias wget="wget -c --user-agent 'noleak'"
alias dd="dd status=progress"
alias cp="cp -i"                          # confirm before overwriting something
alias rm="rm -i"
alias mv="mv -i"
alias df="df -h"                          # human-readable sizes
alias free="free -h"
alias du="du -h"

# Cipher substituition  tools
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias rot18="tr 'A-Za-z0-9 'N-ZA-Mn-za-m5-90-4'"
alias rot47="tr '\!-~' 'P-~\!-O'"

# Funtion usage like aliases
ds () {
	echo "Disk Space Utilization For $HOSTNAME"
	sudo df -h
}

# Function change language of current terminal
trocar_idioma () {
	printf "Which language u wanna use on current terminal: \n"
	printf "Examples: en_US.UTF-8 or pt_BR.UTF-8 \n"
	read idioma_selecionado
	export LANG=${idioma_selecionado}
	export LC_MESSAGES=${idioma_selecionado}
}
