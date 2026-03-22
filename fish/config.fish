if status is-interactive
    # activate https://starship.rs/
    starship init fish | source
end

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias ccusage-codex 'bunx @ccusage/codex@latest'
alias ccusage 'bunx ccusage'
alias codex 'bun run codex'

# Obsidian
export PATH="$PATH:/Users/ankit-17178/Applications/Obsidian.app/Contents/MacOS"
