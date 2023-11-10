# Using loop I have an infinite loop, using while or for is not infinite

x=0

loop do 

    if(x>10)
        break
    end

    if(x==4)
        retry
    end

    x+=1

    if(x==4)
        next
    end
 
    puts "X value: #{x}"

end