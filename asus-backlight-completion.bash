_asus_backlight_completions()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="--mode --speed --color --help --status"

    case "$prev" in
        --mode)
            COMPREPLY=( $(compgen -W "0 1 2" -- "$cur") )
            return 0
            ;;
        --speed)
            COMPREPLY=( $(compgen -W "0 1 2" -- "$cur") )
            return 0
            ;;
        --color)
            # Suggest a format for color
            COMPREPLY=( $(compgen -W "255,0,0 0,255,0 0,0,255" -- "$cur") )
            return 0
            ;;
    esac

    if [[ ${cur} == -* ]] ; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi
}
complete -F _asus_backlight_completions asus-backlight 