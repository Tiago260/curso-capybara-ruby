# construtor e um metodo que é executado toda vez que eu crio um objeto
class Conta
    attr_accessor :saldo, :nome

    # initialize e um metodo construtor / é executado automaticamente toda vez que chamo .new
    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)
        # com self eu consigo invocar um metodo ou atriduto dentro da minha class
        self.saldo += valor # o '+=' e para acrescentar o valor no saldo
        puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}."
        # ou: puts 'Depositando a quantia de ' + valor.to_s + ' reais.' 
    end
end

c = Conta.new('Tiago')

c.deposita(100.00)
puts c.saldo

c.deposita(10.00)
puts "Saldo Total: #{c.saldo}"
puts c.nome




