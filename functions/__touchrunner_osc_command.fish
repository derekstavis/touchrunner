function __touchrunner_osc_command -a cmd
  switch "$TERM"
    case 'screen*'
      printf '\033Ptmux;\033\033]'
    case '*'
      printf '\033]'
  end

  printf '1337;%s' "$cmd"

  switch "$TERM"
    case 'screen*'
      printf '\a\033\\"'
    case '*'
      printf '\a'
  end
end
