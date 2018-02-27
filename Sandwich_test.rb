require "colorize"
require_relative "Sandwich"

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

def test_for_cheese_sandwich
    subject "cheese sandwich"
    sandwich = Sandwich.build type: 'cheese', number_of_sandwiches: 2
    number_of_steps = sandwich.length
    expect(number_of_steps, "number of steps", 9)

    step_1 =  sandwich[0]
    expect step_1, "step 1", "open bread" 
    
    step_2 = sandwich[1] 
    expect step_2, "step 2", "take 4 pieces of bread"

    step_3 = sandwich[2]
    expect step_3, "step 3", "open cheese jar"

    step_4 = sandwich[3]
    expect step_4, "step 4", "if there is cheese in jar"

    step_5 = sandwich[4]
    expect step_5, "step 5", "otherwise cry"

    step_6 = sandwich[5]
    expect step_6, "step 6", "pick up knife by handle"

    step_7 = sandwich[6]
    expect step_7, "step 7", "stick knife in cheese jar"

    step_8 = sandwich[7]
    expect step_8, "step 8", "smear bread"

    step_9 = sandwich[8]
    expect step_9, "step 9", "enjoy!"
end

def test_for_beef_sandwich
    subject "beef sandwich"
    sandwich = Sandwich.build type: 'beef', number_of_sandwiches: 1

    step_1 =  sandwich[0]
    expect step_1, "step 1", "open bread"
    
    step_2 = sandwich[1] 
    expect step_2, "step 2", "take 2 pieces of bread"

    step_3 = sandwich[2]
    expect step_3, "step 3", "open beef jar"
end
end

puts SandwichTest.test_for_cheese_sandwich 
puts SandwichTest.test_for_beef_sandwich