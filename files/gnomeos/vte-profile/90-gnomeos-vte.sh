__gnomeos_prompt_command() {
  local pwd='~'
  [ "$PWD" != "$HOME" ] && pwd=${PWD/#$HOME\//\~\/}
  pwd="${pwd//[[:cntrl:]]}"
  printf "\033]0;%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${pwd}"
}

if [[ -n "${BASH_VERSION:-}" ]]; then
    PROMPT_COMMAND+=("__gnomeos_prompt_command")
fi
