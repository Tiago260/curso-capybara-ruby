class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end

# TDD (Desenvolvimento guiado por teste)
    describe AvengersHeadQuarter do
     it  'deve adicionar um vingador' do 
         hq = AvengersHeadQuarter.new
         #.put adiciona no objeto list
         hq.put('spiderman')
         expect(hq.list).to include 'spiderman'
     end


     it 'deve adicionar uma lista de vingadores' do
         hq = AvengersHeadQuarter.new
         hq.put('Thor')
         hq.put('Hulk')
         hq.put('Spiderman')

         res = hq.list.size > 0
         # include mostra se o registro esta na lista
         # expect(hq.list).to include 'Hulk'
         # "size" só serve para listas ele verifica se o objeto é uma lista e a quantidade de objetos na lista
         expect(hq.list.size).to be > 2
         expect(res).to be true
     end

     it 'thor deve ser o primeiro da lista' do
         hq = AvengersHeadQuarter.new

         hq.put('Thor')
         hq.put('Hulk')
         hq.put('Spiderman')
         #start_with verifica se o objeto é o primeiro da lista
         expect(hq.list).to start_with('Thor')
     end
     
     it 'ironman deve ser o último da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')
        #end_with verifica se o objeto é o último da lista
        expect(hq.list).to end_with('Ironman')
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'
        #match verifica se a frase comtem o valor
        expect(avenger).to match(/Parker/)
        #verificando que não contem
        expect(avenger).not_to match(/tiago/)
    end
end