require 'irb/completion'
require 'rubygems'
require 'pp'
require 'wirble'
require 'utility_belt'
require 'what_methods'


# set config values
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:EVAL_HISTORY] = 1000
IRB.conf[:AUTO_INDENT] = true


Wirble.init
Wirble.colorize


puts "Ruby #{RUBY_VERSION} #{RUBY_PLATFORM}, PID: #{$$}, #{Time.now}"
 