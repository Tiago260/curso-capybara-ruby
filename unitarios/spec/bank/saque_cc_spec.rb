#Execução do primeiro cenario do BDD 'saque.feature'
#Executando o comando "rspec spec\saque_spec.rb -fd" o -fd gera um formulário de documentação

#pegando class ContaCorrente na pasta 
require_relative '../../app/bank'
#suite
    describe ContaCorrente do 
        describe 'Saque' do
            context 'quando o valor é positivo' do
                #before(:all) é o metodo do contexto
                before(:all) do
                    @cc = ContaCorrente.new(1000.00)
                    @cc.saca(200.00)
                end
                #it serve para fazer mais uma verificação no meu context
                it 'entao atualiza saldo' do
                    expect(@cc.saldo).to eql 795.00
                end
            end

            context 'quando o saldo é zero' do
                before(:all) do
                    @cc = ContaCorrente.new(0.00)
                    @cc.saca(100.00)
                end
                it 'então exibe mensagem' do
                    expect(@cc.mensagem).to eq 'Saldo insuficiente para saque :('
                end
                it 'e o saldo final com zeros' do
                    expect(@cc.saldo).to eq 0.00
                end
            end

            
            context 'quando o saldo é insuficiente' do
                before(:all) do
                    @cc = ContaCorrente.new(100.00)
                    @cc.saca(101.00)
                end
                it 'então exibe mensagem' do
                    expect(@cc.mensagem).to eq 'Saldo insuficiente para saque :('
                end
                it 'e o saldo permanece' do
                    expect(@cc.saldo).to eq 100.00
                end
            end

            context 'quando supera o limite de saque' do
                before(:all) do
                    @cc = ContaCorrente.new(1000.00)
                    @cc.saca(701.00)
                end
                it 'então exibe mensagem' do
                    expect(@cc.mensagem).to eq 'Limite máximo por saque é de R$ 700'
                end
                it 'e o saldo permanece' do
                    expect(@cc.saldo).to eq 1000.00
                end
            end 
        end

    end