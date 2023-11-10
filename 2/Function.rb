def my_func
    puts "Hello"
end

my_func

# Return is optional, ruby will return the last expression in the function

def my_func2
    2
    3
    4
    5
end

puts my_func2

# Return is optional, but if I use it, ovviamente it will return 3

def my_func3
    2
    return 3
    4
    5
end

puts my_func3

def my_func4(name,lastname)
    puts"Hello #{name} #{lastname}"
end

my_func4("John","Doe")

# Le parentesi anche sono opzionali

my_func4 "John","Doe"

# L'asterisco mi dice che possono esserci piu' di tre argomenti

def test(a,b,*rest)
    puts "First argument #{a}"
    puts "Second argument #{b}"
    puts "Third argument #{rest}"
end

# Il resto dei numeri (*rest) sara' un array

test 1,2,3,4,5,6,7,8


# Ci metto i : perche' altrtimenti quando vado a chiamre la funzione non ci capisco niente con tutte queste variabili

def personal_detail(firstname:, lastname:, job:, age:, city:, phone:)
    puts "First name: #{firstname}"
    puts "Lat name: #{lastname}"
    puts "Job: #{job}"
    puts "Age: #{age}"
    puts "Lives in #{city}"
    puts "Phone #{phone}"
end

# Vado a chiamare la funzione e capisco cio' che sto inserendo granzie ai :
# OCCHIO non importa l'ordine

personal_detail firstname: "Pio", lastname: "Cecca", phone: 12344, city: "Bernalda", age: 23, job: "Ing"

# OCCHIO nelle funzioni non posso usare variabili che non sono definiti nella funzione o nell'argomento della funzione, funzionano solo le GLOBALI

# Definisco una variabile globale

$x=10

def display
    puts "X is #{$x}"
end

# Vedo se la funzione funziona con la variabile globale (si)

display

# Lavoro con gli array, aggiungo un valore all'array

def display_arr(array)
    array << 9
end

# Vedo se il numero e' stato aggiunto

arr=[3,5]

puts "array before calling the function #{arr}"

display_arr(arr)

puts "array after calling the function #{arr}"