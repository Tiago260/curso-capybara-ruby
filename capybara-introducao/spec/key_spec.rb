describe 'Teclado', :key do

    before(:each) do
        visit '/key_presses'
    end
    
    it 'enviando teclas' do
        #criando um array de simbolos "%i"
        teclas = %i[tab escape space enter shift control alt]

        teclas.each do |t|
        #send_keys é um comando para chamar teclas
            find('#campo-id').send_keys t
            #upcase serve para deixar string maiúscula
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
        end
    end

    it 'enviando letras' do
        #%w para criar array de letras
        letras = %w[a s d f g h j k l]
        letras.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
        end
    end
    
    after(:each) do
        sleep 1
    end




end