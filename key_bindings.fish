for n in (seq 20)
  if test "$__fish_active_key_bindings" = fish_vi_key_bindings
    bind -M insert -k f$n "__touchrunner_keydown $n"
  else
    bind -k f$n "__touchrunner_keydown $n"
  end
end
