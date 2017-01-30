

isNice = { "billy" => false, "Sarah" => true, "Jack" => false }

nice = "nice"
naughty = "naughty"

isNice.each { |k,v| puts "#{k} was #{v == true ? nice : naughty}" }



while true
    puts "enter command(enter help for commands):"
    command = gets.chomp
    
    case command
        when "help"
            puts "====================Commands====================\n"
            puts "\thelp:\t\tdisplay commands\n\tinquire:\tdisplay whether kid was nuaghty or nice\n\tadd:\t\tadd new kid to list\n\texit:\t\tclose program\n\tdisplay:\tList kids and their status"
            puts"================================================\n"            
        when "inquire"
            print "enter name:"
            name = gets.chomp
            puts "\n#{name} was #{isNice[name] == true ? nice : naughty}"
        when "add"
            print "enter name:"
            name = gets.chomp
            print "was the child nice?(Y/N):"
            wasNice = gets.chomp
            if isNice[name] == nil 
                isNice[name] = (wasNice=="Y" ? true : false)
            end
        when "display"
            isNice.each { |k,v| puts "#{k} was #{v == true ? nice : naughty}" }
        when "exit"        
            break;
    end
    puts"\n\n"
end
