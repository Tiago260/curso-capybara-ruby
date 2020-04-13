
                             #Esta tag serve para chamar a automação dessa suite EX:(rspec --tag @dropdown)
describe 'Caixa de opções', :dropdown do
    
    it 'item especifico simples' do
        visit '/dropdown'
        #selecionando elemento do tipo "select" com o texto "Bucky" e o id "dropdown"(id deve estar na tag select)
        select('Bucky', from: 'dropdown')
        sleep 3
    end

    it 'item especifico com find' do
        visit '/dropdown'
        drop = find('.avenger-list')
        #buscando uma das options do dropdown cujo valor do texto e "Scott Lang"(select_option é selecione uma opção)
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    it 'qualquer item', :sample do
        visit '/dropdown'
        drop = find('.avenger-list')
        #.all quer dizer selecione todos os options
        #.sample quer dizer selecione randon um dos options
        drop.all('option').sample.select_option
        sleep 3
    end

end