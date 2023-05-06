# MATH

# factorial
# x! = x * (x-1)!
function factorial {
	if [[ "$1" -eq 1 ]]; then
		echo 1
	else
		local reducedbyone=$(($1 - 1))
		echo $(($1 * $(factorial "$reducedbyone")))
	fi
}

function sd() {
	if [[ $# -gt 1 || "$1" == "help" ]]; then
		message
		return
	fi
	if [[ $# -eq 0 ]]; then
		mypath="."
	else
		case "$1" in
		"d")
			mypath="$HOME/Documents"
			;;
		"h")
			mypath="$HOME"
			;;
		"o")
			mypath="$HOME/Documents/Obsidian"
			;;
		*)
			mypath="$1"
			;;
		esac
	fi

	cd "$(fd -td . "${mypath}" | fzf)" || echo "cd error!"

	function message() {
		echo "sd searches for directories and cd-s into them"
		echo "Zero or one arguments are allowed."
		echo "Use no argument to search in the current directory."
		echo "Use one argument h - home, d - documents, o - obsidian"
	}

}
