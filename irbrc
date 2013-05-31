# vim: set syntax=ruby foldmethod=marker :
begin
  require 'fileutils'
  require 'interactive_editor'
  require 'irb/completion'
  require 'irb/ext/save-history'
  require 'wirble'
  Wirble.init
  Wirble.colorize
rescue LoadError
end

ARGV.concat [ "--readline",
  "--prompt-mode",
  "simple" ]

# Auto-indentation.
IRB.conf[:AUTO_INDENT] = true

# Readline-enable prompts.
IRB.conf[:USE_READLINE] = true
IRB.conf[:SAVE_HISTORY] = 1000

# Store results in home directory with specified file name
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

