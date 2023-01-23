source "$XDG_CONFIG_HOME/zsh/aliases"


# If a parameter is completed whose content is the name of a directory, 
# then add a trailing slash instead of a space.
setopt AUTO_PARAM_SLASH
# the presence of any character which is special to filename generation will 
# cause case-insensitive matching. 
# For example, cvs(/) can match the directory CVS owing to the presence of the 
# globbing flag (unless the option BARE_GLOB_QUAL is unset).
unsetopt CASE_GLOB

# The autoload command loads a file containing shell commands. 
# To find this file, Zsh will look in the directories of the Zsh file search path, 
# defined in the variable $fpath . From there, it will trytofindafilenamed compinit.
# When the file compinit is found, its contents will be loaded as a function. 
# The function name will be the name of the file. You can then call this function 
# like any other shell function.
# Why use autoload, and not source the file by doing source /path/of/compinit 
# • It avoids name conflicts if you have an executable with the same name. 
# • It doesn’t expand aliases thanks to the -U option.
autoload -U compinit; compinit

# Autocomplete hidden files
_comp_options+=(globdots)
source ~/repos/geordan/dotfiles/.config/zsh/external/completion.zsh

# Load autocompletion
fpath=($ZDOTDIR/external $fpath)
