

describe 'Caixas de seleção', :checkbox do

    #before(:each) executa o metodo antes de cada it 
    before(:each) do
        visit '/checkboxes'
    end

    it 'marcando uma opção' do
        check('thor')
    end

    it 'desmarcando uma opção' do
        uncheck('antman')
    end
    
    #outra forma de marcar checkbox
    it 'marcando com find set true' do
        find('input[value=cap]').set(true)
    end

    it 'desmarcando com find set false' do
        find('input[value=guardians]').set(false)
    end

    #after(:each) executa o metodo depois de cada it 
    after(:each) do
        sleep 3 
    end
end