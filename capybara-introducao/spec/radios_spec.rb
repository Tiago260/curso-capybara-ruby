
describe 'Botões de Radio', :radio, :smoke do
    before(:each) do
        visit '/radios'
    end

    it 'selecão por ID' do
        #choose faz a escolha do radio button
        choose('cap')
    end

    it 'seleção por find e css selector' do
        find('input[value=guardians]').click
    end 

    after(:each) do
        sleep 3
    end
end