
# 5.times do |i|
#     puts 'Repetindo a mensagem ' + i.to_s + ' vez(es).'
# end

# -- While enquanto a condição for verdadeira o lopping sera ifinito --

# while true do
#     puts 'Lopping infinito'
# end

# init = 0
# while init <= 10 do
#     puts 'Repetindo a mensagem ' + init.to_s + ' vez(es).'
#     init += 1
# end

# -- for --

# for item in (0...10)
#     puts 'Repetindo a mensagem ' + item.to_s + ' vez(es).'
# end

# -- Arrays --

vingadores = ['Ironman', 'Hulk', 'Spiderman', 'Thor']
    
vingadores.each do |v|
    puts v
end
