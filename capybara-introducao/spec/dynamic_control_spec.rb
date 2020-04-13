describe 'Dynamic Control', :dc do

    before(:each) do
        visit '/dynamic_controls'
    end

    it 'quando habilita o campo' do
        #page.has_field? pergunta se existe o elemento na pagina
        #disabled: true pergunta se esta habilitado o campo
        res = page.has_field? 'movie', disabled: true
        puts res

        click_button 'Habilita'
        #disabled: false pergunta se esta o campo não esta mais habilitado
        res = page.has_field? 'movie', disabled: false
        puts res
    end

end