function remove-panelcolorizer
    set -l USER_PATHS \
        "$HOME/.local/lib/qml/org/kde/plasma/panelcolorizer/" \
        "$HOME/.local/lib64/qml/org/kde/plasma/panelcolorizer/"

    set -l SYSTEM_PATHS \
        "/usr/lib/qt6/qml/org/kde/plasma/panelcolorizer/" \
        "/usr/lib64/qt6/qml/org/kde/plasma/panelcolorizer/"

    echo "--- 1. Checking and removing USER directories ---"
    for dir in $USER_PATHS
        if test -d $dir
            echo "Found and removing: $dir"
            rm -rf $dir
        else
            echo "   Skipping: $dir (Not found)"
        end
    end
    echo ""
end
