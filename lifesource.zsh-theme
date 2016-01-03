PROMPT='$fg[green][$fg[red]吳$fg[white]錦倫$fg[green]] ♻$fg[yellow]$(getPwd)$(getSpacing)$(gitPromptInfo)
$fg[green]~>$fg[cyan]> $reset_color'

function getPwd() {
	echo "${PWD/$HOME/ }"
}

function getSpacing() {

	local git=$(gitPromptInfo)
	if [ ${#git} != 0 ]; then
		((git=${#git} - 10))
	else
		git=0
	fi

	local termwidth
	(( termwidth = ${COLUMNS} - 2 - ${#HOST} - ${#$(getPwd)} - ${git} ))

	local spacing=""
	for i in {1..$termwidth}; do
		spacing="${spacing} "
	done
	echo $spacing

}

ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"

function gitPromptInfo() {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}
