function qyt --description 'Quick yt-dlp with custom sorting and optional section clipping'
    # Default sorting preference
    set -l sort_args -S "+size,+br"
    
    # Check if we have at least a URL
    if test (count $argv) -lt 1
        echo "Usage: yq <URL> [timestamp]"
        echo "Example: yq https://youtu.be/abc 01:00-02:00"
        return 1
    end

    set -l url $argv[1]
    set -l timestamp $argv[2]

    if test -n "$timestamp"
        yt-dlp $sort_args --download-sections "*[$timestamp]" $url
    else
        yt-dlp $sort_args $url
    end
end
