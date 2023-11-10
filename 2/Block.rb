#yield e' simile al return, ma non esce dalla funzione, continua

def twice
    yield
    yield
end

twice {puts "my function my block"}

def twice2
    yield(33)
    yield(990)
end

twice2 {|x| puts "value provided to the block #{x}"}

def twice3
    yield(33,3,6)
    yield(990,6,8)
end

twice3 {|x,y,z| puts "value provided to the block #{x} #{y} #{z}"}

# Aggiungo un semplice controllo che mi ricorda di scrivere la funzione come sopra

def twice4
    if block_given?
        yield(33,3,6)
        yield(990,6,8)
    elsif
        puts "No block given"
    end
end

twice4

def n_times(n)
    if block_given?
        until n.zero?
            yield n
            n-=1
        end
    elsif
        puts "No block given"
    end
end

n_times(8) {|x| puts "Block called #{x}"}
n_times(1)

# Posso creare un blocco anche con proc

my_greeting= proc{|x| puts "Hello #{x}"}

my_greeting.call "Ruby"

# Provo a chiamre il blocco senza argomento

my_greeting.call

# I want to call my block 3 times
# & sta a significare che quello che gli passo e' un blocco
# NOTE Index will strat from zero

3.times &my_greeting