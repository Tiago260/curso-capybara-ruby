

describe 'Forms' do
    
    it 'login com sucesso' do
        visit '/login'
        #fill_in para preencher o campo(do tipo name ou id) com o valor
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'
        #click_button para clicar em um elemento do tipo botão
        click_button 'Login'
        #.visible para verificar se o elemento esta visível na pagina (Retorna true ou False)
        expect(find('#flash').visible?).to be true
        #obtendo o texto e validando se tem o conteúdo no texto
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        #validando de contem, aquele texto(imcompleto) no elemento 
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

        #criando pasta e dando scheenshot
        #page.save_screenshot('log/login_com_sucesso.png')
    end

    it 'senha incorreta' do
        visit '/login'
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarves!'
        click_button 'Login'
        expect(find('#flash')).to have_content 'Senha é invalida!'

    end
    
    it 'usuario nao cadastrado' do
        visit '/login'
        fill_in 'userId', with: 'starq'
        fill_in 'password', with: 'jarvis!'
        click_button 'Login'
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'

    end

    #.description pega o nome de cada cenário
    #.gsub cria uma sub string
    #(/[^A-Za-z0-9)]/, '') isso é uma expresão regular que substitui caracter especial por nada
    # |e| é um parametro exemplo. ele pega o titulo de cada cenário
    # tr(' ','_') substituir espaços em branco por "_"
=begin
    after(:each) do |e|
        nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
        page.save_screenshot('log/' + nome + '.png')
    end
=end

end