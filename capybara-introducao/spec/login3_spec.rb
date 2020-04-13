

describe 'Login com cadastro', :login3 do

    before(:each) do
        visit '/access'
    end

    it 'login com sucesso' do
    #trabalhando dentro de um escopo na pagina
        #login_form = find('#login')
        #login_form.find("[name='username']").set 'stark'
        #login_form.find("[name='password']").set 'jarvis!'
        #click_button 'Entrar'

    #outra forma de trabalhar com escopo
        within('#login') do
            find("[name='username']").set 'stark'
            find("[name='password']").set 'jarvis!'
            click_button 'Entrar'
        end

        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!' 
    end

    it 'cadastro com sucesso', :cadastro do

            within('#signup') do
                find("[name='username']").set 'stark'
                find("[name='password']").set 'jarvis!'
                click_link 'Criar Conta'
            end
    
            expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!' 
        end


    after(:each) do
        sleep 2
    end

end