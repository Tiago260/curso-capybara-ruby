class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} está pronto para iniciar o trajeto!"
    end

    def buzinar
        puts 'Beep! Beep!'
    end

end

# classe Carro está herdando informações da classe Veiculo
class Carro < Veiculo
    def digirir
        puts "#{nome} iniciando o trajeto."
    end
end

# classe Moto está herdando informações da classe Veiculo
class Moto < Veiculo
    def pilotar
        puts "#{nome} iniciando o trajeto."
    end
end

civic = Carro.new('Civic', 'Honda', 'SI')
civic.ligar
civic.buzinar
civic.digirir

lancer = Carro.new('Lancer', 'Mitsubishi', 'EVO')
lancer.ligar
lancer.buzinar
lancer.digirir

fazer = Moto.new('Fazer', 'Yamaha', '250x')
fazer.ligar
fazer.buzinar
fazer.pilotar


