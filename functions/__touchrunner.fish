function __touchrunner
  test -f "package.json"
    or return

  set -l tasks (__touchrunner_list_tasks)
  set key 1

  if test (count $tasks) = 0
    if test "$__touchrunner_wd_has_tasks" = 1
      __touchrunner_osc_command 'PopKeyLabels=npm-scripts'
    end

    set __touchrunner_wd_has_tasks 0
  end

  if test "$__touchrunner_wd_has_tasks" = 0
    __touchrunner_osc_command 'PopKeyLabels=npm-scripts'
    __touchrunner_osc_command 'PushKeyLabels=npm-scripts'
  end

  set __touchrunner_wd_has_tasks 1

  for task in $tasks
    __touchrunner_osc_command (printf 'SetKeyLabel=%s=%s' F$key $task)

    set key (math $key + 1)

    if test $key -gt 20
      break
    end
  end
end
