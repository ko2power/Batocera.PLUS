###
### Profile for Batocera.PLUS
###

if [ "$PS1" ]; then
	if [ "`id -u`" -eq 0 ]; then
                export PS1="[\[\e[1;32m\]Batocera\[\e[0;38m\].\[\e[1;33m\]PLUS\[\e[1;36m\]:\[\e[0;37m\]\w]# \[\e[m\]"
	else
                export PS1="[\[\e[1;32m\]Batocera\[\e[0;38m\].\[\e[1;33m\]PLUS\[\e[1;36m\]:\[\e[0;37m\]\w]$ \[\e[m\]"
	fi
fi

BATOCERA_VERSION='/usr/share/batocera/batocera.version'
RECALBOX_VERSION='/usr/share/batocera/recalbox.version'
RECALBOX_ARCH='/usr/share/batocera/batocera.arch'

clear
echo
echo ' BATOCERA.PLUS BY ALEXANDRE FREIRE DOS SANTOS'
echo -n " Version: $(cat $BATOCERA_VERSION | cut -d' ' -f 1)"
echo -n " Release: $(cat $BATOCERA_VERSION | cut -d' ' -f 2)"
echo    " Arch: $(cat $RECALBOX_ARCH)"
echo    " Based on version $(cat $RECALBOX_VERSION | cut -d' ' -f 1) of the batocera.linux"
echo

unset BATOCERA_VERSION
unset RECALBOX_VERSION
unset RECALBOX_ARCH