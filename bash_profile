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
fi

##increase history size, to search for previous commands##
export HISTSIZE=10000000
export HISTFILESIZE=10000000

#aliases#
alias vmrun="/Applications/VMware\ Fusion.app/Contents/Library/vmrun"

if command_exists mvim ; then 
	alias vi="mvim -fv"
	alias vim="mvim -fv"
fi

#alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"
alias sdunload="sudo kextunload -b com.apple.iokit.IOUSBMassStorageClass"
alias sdload="sudo kextload -b com.apple.iokit.IOUSBMassStorageClass"
alias jauth="open ~/bin/jauth.jar"

#editor#
export VISUAL="/usr/local/bin/mvim -fv"
export EDITOR="$VISUAL"

#add JAVA_HOME variable#
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home

#add ~/bin to $PATH#
export PATH=$PATH:$HOME/bin
