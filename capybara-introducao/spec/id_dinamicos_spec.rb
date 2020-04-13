describe 'IDs Dinâmicos', :dinamicos, :smoke do
    
    before(:each) do
        visit '/access'
    end


    #$ => termina com
    #^ => começa com
    #* => contem

    it 'cadastro' do
        #pegando parte do id
        find('input[id$=UsernameInput]').set 'Tiago'
        find('input[id^=PasswordInput]').set '123456'
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3
    end
end