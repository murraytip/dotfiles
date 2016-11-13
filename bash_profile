##MJT's bash_profile##

#colours#
export CLICOLOR=1
export LSCOLORS=gafahadxbxegedabagacad

##increase history size, to search for previous commands##
export HISTSIZE=10000000
export HISTFILESIZE=10000000

#to allow multiple searches on Homebrew package manager#
export HOMEBREW_GITHUB_API_TOKEN=8b4704dfceb0ebc9d876e0c247be35b112ae3157

#aliases#
alias vmrun="/Applications/VMware\ Fusion.app/Contents/Library/vmrun"
alias vi="mvim -fv"
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
