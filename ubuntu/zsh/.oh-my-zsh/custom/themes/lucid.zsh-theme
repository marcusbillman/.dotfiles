# Lucid by Marcus Billman
# based on suvash

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '◉' && return   # in a git repository?
    echo '○%f'
}

PROMPT='%F{magenta}%n%f at %F{yellow}%m%f in %B%F{green}%~%f%b$(git_prompt_info)
%(?:··:%F{red}✕ %f)$(prompt_char) '
RPROMPT='│ %D{%H:%M:%S}'

ZSH_THEME_GIT_PROMPT_PREFIX=' on %F{cyan}'
ZSH_THEME_GIT_PROMPT_SUFFIX='%f'
ZSH_THEME_GIT_PROMPT_DIRTY=' (modified)'
ZSH_THEME_GIT_PROMPT_UNTRACKED=' (untracked)'
ZSH_THEME_GIT_PROMPT_CLEAN=''