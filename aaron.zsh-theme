if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR=111; fi

PROMPT='|%{$FG[$NCOLOR]%}%c%{$reset_color%}> '
RPROMPT='%{$FG[$NCOLOR]%} $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[111]%}git:%{$reset_color%}(%{$FG[135]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}) ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%})"

# See https://geoff.greer.fm/lscolors/
export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"
