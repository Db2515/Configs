# Start TMUX when fish is started
# Create a session main or connect to it if it already exists
# This stops many sessions being created
if status is-interactive
  and not set -q TMUX
    exec tmux new-session -A -s main
end

# config repo alias
alias config="git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
