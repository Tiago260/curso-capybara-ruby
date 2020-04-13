# se a condição for verdadeira executa dentro de if ou elsif se for falsa dentro de else

puts 'digite um numero 1 ou 2'
v1 = gets.to_i

if v1 == 1
    puts 'Valor igual a 1'
elsif v1 == 2
    puts 'Valor igual a 2'
else
    puts 'valor não e igual a 1'
end
