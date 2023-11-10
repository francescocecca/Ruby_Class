# Example of common block

6.times do |x| puts "hello #{x}" end

5.times{ |x| puts "hi #{x}"}

# Posso anche definire un blocco (devo mettere proc perche' altrimenti, solo con l'uguale, creerei un hash)

my_block=proc{ |x| 
    puts "Iteration number #{x+1}"
    puts "Actual variable #{x}"
}

# Quando deve chiamare un blocco, devo usare il &
# NOTA Se non gli passo nulla, funziona lo stesso

7.times &my_block

# Se chiamo un blocco e gli passo degli argomenti, funziona lo stesso, non come le funzioni

my_block.call(9,8,7)

# La classe di un blocco, la vedo con block.class

puts "parola".class
puts 8.class
puts my_block.class

# Un altro tipo di blocco e' il lambla (stessa classe di prima, sempre un proc)

my_lambda=lambda{ |x| puts "this is lambda"}

puts my_lambda.class

# La differenza e' che lambda si aspetta gli argomenti di cui necessita

my_lambda.call 4

# Altra differenza con le funzioni e' che i blocchi possono vedere le variabili create al loro esterno

my_var='test'

my_proc_1 = proc{puts "my var is: #{my_var}"}

my_proc_1.call

my_lambda = lambda{puts "my var is: #{my_var}"}

my_lambda.call

# Altri modi per chiamare/creare blocchi

def create_closure
    counter=0
    return proc {counter += 1}
end

puts my_closure=create_closure

puts my_closure.call

# Se lo richiamo, counter si incrementera'

puts my_closure.call
puts my_closure.call
puts my_closure.call

# Posso creare anche due blocchi in una volta

def create_two_procs
    counter=0
    [
        proc {counter += 1},
        proc {counter -= 1}
    ]
end

increment, decrement= create_two_procs

puts "increment call #{increment.call}"
puts "increment call #{increment.call}"
puts "increment call #{increment.call}"

puts "decrement call #{decrement.call}"
puts "decrement call #{decrement.call}"
puts "decrement call #{decrement.call}"


