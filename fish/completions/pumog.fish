function __fish_rake_tasks

  # remove rake from the tasks
  set -l sed_cmds 's/\brake//g'
  # remove leading whitespaces
  set -l sed_cmds $sed_cmds 's/^[ \t]*//'
  set -l sed_cmds $sed_cmds 's/\# /::/g'

  rake -T | sed -E "-e"$sed_cmds
end


# Commands

complete -c pumog -n '__fish_use_subcommand' -a 'list' -d 'Load the specified session layout...'
complete -c pumog -s o -l output -a "yes no"


#commands with a session flag
#complete -c pumog -xs t -n "__fish_seen_subcommand_from $attach $new $has $killsession $lsc $locks $rename $switchc" -a '(__fish_rake_tasks)' -d 'rake task'

complete -c pumog -xs p -n "__fish_seen_subcommand_from 'list'" -a '(__fish_rake_tasks)' -d 'session-template'
#complete -c tmuxifier -x -n "__fish_seen_subcommand_from $cmd_load_session" -a '(tmuxifier list-sessions)' -d 'session-template'
