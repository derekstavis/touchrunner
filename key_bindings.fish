for n in (seq 20)
  bind -M insert -k f$n "__touchrunner_keydown $n"
end
