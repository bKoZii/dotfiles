source /usr/share/cachyos-fish-config/cachyos-config.fish

set -U nvm_default_version lts
# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
alias powermode='sudo cpupower frequency-set -g powersave && echo power | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference'
alias bpowermode='sudo cpupower frequency-set -g powersave && echo balance_power | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference'
alias bperfmode='sudo cpupower frequency-set -g powersave && echo balance_performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference'
alias perfmode='sudo cpupower frequency-set -g performance && echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference'
