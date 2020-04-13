# Classe possui atributos e métodos
# Características e Ações

# Carro (nome, Marca, Modelo, Cor, Quantidade de portas, etc...)
# Ligar, Businar, Parar, etc...

class Carro
    # atributo pode receber e definir valor
    attr_accessor :nome

    def ligar
        puts 'O carro está pronto para iniciar o trajeto.'
    end

end

civic = Carro.new
civic.nome = 'Civic'

puts civic.nome
civic.ligar
