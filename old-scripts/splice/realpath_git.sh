#!/bin/sh
#===============================================================================
# Example Usage: realpath_git.sh show src/test/java/com/SomeFile.java
#
# Executes     : git show <absolute path with no symbolic links>/SomeFile.java
#
# version: 1.2
#===============================================================================

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#
# The following creates a function that resolves an absolute or relative
# path with symbolic links to a fully qualified path without symbolic links.  
# It comes from here: https://github.com/mkropat/sh-realpath
#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

realpath() {
    canonicalize_path "$(resolve_symlinks "$1")"
}

resolve_symlinks() {
    _resolve_symlinks "$1"
}

_resolve_symlinks() {
    _assert_no_path_cycles "$@" || return

    local dir_context path
    path=$(readlink -- "$1")
    if [ $? -eq 0 ]; then
        dir_context=$(dirname -- "$1")
        _resolve_symlinks "$(_prepend_dir_context_if_necessary "$dir_context" "$path")" "$@"
    else
        printf '%s\n' "$1"
    fi
}

_prepend_dir_context_if_necessary() {
    if [ "$1" = . ]; then
        printf '%s\n' "$2"
    else
        _prepend_path_if_relative "$1" "$2"
    fi
}

_prepend_path_if_relative() {
    case "$2" in
        /* ) printf '%s\n' "$2" ;;
         * ) printf '%s\n' "$1/$2" ;;
    esac
}

_assert_no_path_cycles() {
    local target path

    target=$1
    shift

    for path in "$@"; do
        if [ "$path" = "$target" ]; then
            return 1
        fi
    done
}

canonicalize_path() {
    if [ -d "$1" ]; then
        _canonicalize_dir_path "$1"
    else
        _canonicalize_file_path "$1"
    fi
}

_canonicalize_dir_path() {
    (cd "$1" 2>/dev/null && pwd -P)
}

_canonicalize_file_path() {
    local dir file
    dir=$(dirname -- "$1")
    file=$(basename -- "$1")
    (cd "$dir" 2>/dev/null && printf '%s/%s\n' "$(pwd -P)" "$file")
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Start the splice specific part.  
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

#
# Replace symbolic links 
#

NEW_CMD="git";
while true; do
        if [ $1 ]; then
                if [ -e $1 ]; then
                   REALPATH=`realpath $1`;
                   NEW_CMD="${NEW_CMD} ${REALPATH}"
                else
                   NEW_CMD="${NEW_CMD} $1"
                fi
                shift
        else
                break # Stop loop when no more args.
        fi
done

#
# Convert all log commands to log --follow 
#

if [[ ${NEW_CMD} =~ .*[[:space:]]log[[:space:]].* ]]
then
    NEW_CMD=${NEW_CMD//log/log --follow}
fi

#
# Finally, exectue the new command.
#
${NEW_CMD}
