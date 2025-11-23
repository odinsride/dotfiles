# Fish shell configuration converted from zsh
# Add Homebrew to PATH (Apple Silicon Mac)
set -gx PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH

# PostgreSQL configuration
set -gx PATH /opt/homebrew/opt/postgresql@17/bin $PATH
set -gx PATH /opt/homebrew/opt/libpq/bin $PATH

# Mise (formerly rtx) activation
if test -f /Users/sitheris/.local/bin/mise
    /Users/sitheris/.local/bin/mise activate fish | source
end

# THOR merge tool
set -gx THOR_MERGE /Users/sitheris/.local/bin/app_update_thor_merge_tool

# Aliases
alias brewup='brew update; and brew upgrade; and brew cleanup; and brew doctor'
