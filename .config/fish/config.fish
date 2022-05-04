set -U fish_user_paths /opt/homebrew/bin
set -U fish_user_paths /Users/julien/.cargo/bin $fish_user_paths


thefuck --alias | source


if status is-interactive
    # Commands to run in interactive sessions can go here
end
