: '
autoload -Uz vcs_info
zstyle ":vcs_info:*" disable bzr cdv cvs darcs mtn svk svn tla
zstyle ":vcs_info:*" enable git

#setopt PROMPT_SUBST

#zstyle ":vcs_info:git*" formats "%b"
'
precmd() {
: '  vcs_info
  if [[ -n ${vcs_info_msg_0_} ]]; then
    GIT_BRANCH=${vcs_info_msg_0_}
  else
    GIT_BRANCH=""
  fi
'
  PROMPT="%B%F{blue}%~%f %F{red}%(?. .%?)%f%b
%B%F{green}%(!.#.$)%f%b "
}
