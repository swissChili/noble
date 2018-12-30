#!/usr/bin/env ruby
$:.unshift "."
require "./object"
require "./message"
require "./method"
require "./bootstrap"

module Noble
    class Error < RuntimeError
        attr_accessor :current_message
        
        def message
            super + " Message `#{@current_message.to_s}` @ ln.#{@current_message.line}"
        end
    end

    def self.eval(code)
        # Parse
        message = Message.parse(code)
        # Eval
        message.call(Lobby)
    end
    
    def self.load(file)
        eval File.read(file)
    end

    # Parse args!

    if ARGV.size > 0

        target = ARGV[0]
        target ||= "~/.noble/notfound.no"


        load "lib/boolean.no"
        load "lib/if.no"
        load target
    else
        puts "No program specified :("
    end
end