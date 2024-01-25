require 'colorize'

class Fibonacci 
    
    def iterative(num) 
        fibit = Array.new
        fibit.push(0,1)
    
        for i in 2..num
            fibit.push(fibit[i-2] + fibit[i-1])
        end 
        return fibit[num]
    end 

    def recursive(num)
        if (num < 2)
            return num
        end
        return recursive(num -1) + recursive(num -2)
    end 
end 

puts "FIBONACCI SEQUENCE"
puts "------------------"

puts "Menu:"
print "(1)"
puts " Iterative".blue
print "(2)"
puts " Recursive".yellow
print "(3)"
puts " Quit".red
puts""
obj = Fibonacci.new

exit_program = false 

while(!exit_program)
    print "Please enter option 1, 2 or 3:"
    user_input = gets.chomp.to_i 
    if(user_input == 1)
        print "enter fibonacci number:"
        user_input2 = gets.chomp.to_i
        result = obj.iterative(user_input2)
        puts result 
    elsif(user_input ==2)
        print "enter fibonacci number:"
        user_input2 = gets.chomp.to_i
        result = obj.recursive(user_input2)
        puts result 
    elsif( user_input ==3 )
        puts"Quitting..."
        exit_program = true
    else 
        puts "please choose a valid option"
    end 
end


