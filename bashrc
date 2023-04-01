##MJT's bash_profile##

#allows platform-dependent changes
#
platform='unknown'
unamestr="$(uname)"
if [[ "$unamestr" == 'Linux' ]]; then
	platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
	platform='macos'
fi

#a short check to see if a command exists, can do conditionals further down
command_exists () {
	type "$1" > /dev/null 2>&1 ;
}

#colours#
if [[ "$platform" == 'macos' ]]; then
	export CLICOLOR=1
	export LSCOLORS=gafahadxbxegedabagacad
elif [[ "$platform" == 'linux' ]]; then
	export PS1="\[\033[38;5;78m\]\u\[$(tput sgr0)\]\[\033[38;5;72m\]@\h\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;6m\][\w\[$(tput sgr0)\]\[\033[38;5;6m\]]\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;6m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
	export LS_COLORS="di=36:ln=35:so=37:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
fi

##stop prompt length becoming huge by limiting it to 3 directories (only in Bash 4+)##
export PROMPT_DIRTRIM=3

##increase history size, to search for previous commands##
export HISTSIZE=10000000
export HISTFILESIZE=10000000

#MacOS aliases#
if [[ "$platform" == 'macos' ]]; then
	alias vmrun="/Applications/VMware\ Fusion.app/Contents/Library/vmrun"

	if command_exists mvim ; then 
		alias vi="mvim -fv"
		alias vim="mvim -fv"
	fi

	alias sdunload="sudo kextunload -b com.apple.iokit.IOUSBMassStorageClass"
	alias sdload="sudo kextload -b com.apple.iokit.IOUSBMassStorageClass"
	alias jauth="open ~/bin/jauth.jar"

	#add JAVA_HOME variable#
	export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home
fi

# Linux aliases
if [[ "$platform" == 'linux' ]]; then
	alias ls="ls --color=auto"
fi

#editor#
if command_exists mvim ; then
	export VISUAL="/usr/local/bin/mvim -fv"
elif command_exists nvim; then
	export VISUAL="/usr/bin/nvim"
else 
	export VISUAL="/usr/bin/vim"
fi

export EDITOR="$VISUAL"

#add ~/bin to $PATH#
export PATH=$PATH:$HOME/bin
