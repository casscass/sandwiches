require 'colorize'
require_relative './nut_sandwich_test'
require_relative './vegi_sandwich_test'

module SandwichTest
    module_function

def expect actual, message, expected
    if actual == expected 
        puts "  PASS #{message}".colorize(:green)
    else
        puts "  FAIL #{message} expected #{expected}, but got #{actual}".colorize(:red)
    end
end

def subject subject_name
    puts subject_name
end

def test_for_vegi_sandwich
    puts test_for_vegi_sandwich 
end

def test_for_nut_sandwich
    puts test_for_nut_sandwich 
end
end

