#Execução do primeiro cenario do BDD 'saque.feature'
#Executando o comando "rspec spec\saque_spec.rb -fd" o -fd gera um formulário de documentação

require_relative '../../app/bank'

    describe ContaPoupanca do 
        describe 'Saque' do
            context 'quando o valor é positivo' do
                before(:all) do
                    @cp = ContaPoupanca.new(1000.00)
                    @cp.saca(200.00)
                end
                it 'entao atualiza saldo' do
                    expect(@cp.saldo).to eql 798.00
                end
            end

            context 'quando o saldo é zero' do
                before(:all) do
                    @cp = ContaPoupanca.new(0.00)
                    @cp.saca(100.00)
                end
                it 'então exibe mensagem' do
                    expect(@cp.mensagem).to eq 'Saldo insuficiente para saque :('
                end
                it 'e o saldo final com zeros' do
                    expect(@cp.saldo).to eq 0.00
                end
            end

            
            context 'quando o saldo é insuficiente' do
                before(:all) do
                    @cp = ContaPoupanca.new(100.00)
                    @cp.saca(101.00)
                end
                it 'então exibe mensagem' do
                    expect(@cp.mensagem).to eq 'Saldo insuficiente para saque :('
                end
                it 'e o saldo permanece' do
                    expect(@cp.saldo).to eq 100.00
                end
            end

            context 'quando supera o limite de saque' do
                before(:all) do
                    @cp = ContaPoupanca.new(1000.00)
                    @cp.saca(501.00)
                end
                it 'então exibe mensagem' do
                    expect(@cp.mensagem).to eq 'Limite máximo por saque é de R$ 500'
                end
                it 'e o saldo permanece' do
                    expect(@cp.saldo).to eq 1000.00
                end
            end 
        end
        

    end