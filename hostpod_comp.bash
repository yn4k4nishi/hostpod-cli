#! /bin/bash
_hostpod()
{
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "on off" -- $cur) )
}

complete -F _hostpod hostpod
