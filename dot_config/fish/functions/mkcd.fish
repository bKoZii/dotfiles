function mkcd --description "Creates a directory and changes into it"
    if test -z "$argv[1]"
        echo "Usage: mkcd <directory>" >&2
        return 1
    end

    if mkdir -p -- "$argv[1]"
        cd -- "$argv[1]"
    else
        echo "Error: Failed to create directory '$argv[1]'." >&2
        return 1
    end
end
