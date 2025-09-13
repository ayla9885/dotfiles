if status is-interactive
    # Commands to run in interactive sessions can go here
	fish_add_path ~/Scipts
	set -x EDITOR nvim
	set -x EXT_COMPOSITOR_COMPUTE 1 # Avoid stuttering in vr
	set -g fish_greeting 			# remove greeting
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ayla/anaconda3/bin/conda
    eval /home/ayla/anaconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/ayla/anaconda3/etc/fish/conf.d/conda.fish"
        . "/home/ayla/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/ayla/anaconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

