#!/bin/bash 
#
# Esvaziar os discos se ninguem estiver no pc
#
# Vitor de Jesus 🚀❣🚀
# CVS: $Header$

shopt -s -o nounset      # Verificação de ortografia

# Declarações Globais 

declare -rx SCRIPT=${0##*/} # SCRIPT é o nome deste Script

declare -rx who="/usr/bin/who" # O comando sync - man 1 sync 

declare -rx wc="/usr/bin/wc" # O comando wc - man 1 wc 

# Verificação de Sanidade 

if test -z "$BASH" ; then
	printf "$SCRIPT:$LINENO: por favor execute este script com o shell BASH\n">&2
	exit 192
fi

if test ! -x "$who" ; then
	printf "$SCRIPT:$LINENO: o comando $who não esta disponivel - \ abortando\n">&2
	exit 192
fi

if teste ! -x "$sync" ; then
	printf "$SCRIPT:LINENO: o comando $sync não está disponivel - \ abortado\n">&2
	exit 192
fi

if teste ! -x "$wc" ; then
	printf "$SCRIPT:LINENO: o comando $wc não está disponivel - \ abortado\n">&2
	exit 192
fi

# Script principal 

# Esvaziar os Discos se ninguem estiver no pc
USER='who | wc -1'
if {USER -eq 0} ; then 
	sync
fi

# Limpeza

exit 0 # Tudo está bem