describe 'Mouse Hover', :hovers do

    before(:each) do
        visit '/hovers'
    end

    it 'quando passo o mouse sobre o blade' do
        #"*" que contem o valor
       card = find('img[alt*=Blade]')
       card.hover 
       #verificando se na pagina contem o 'Nome: Blade'
       expect(page).to have_content 'Nome: Blade'
    end
    
    it 'quando passo o mouse sobre o Pantera Negra' do
        #"^" que termina com o valor
        card = find("img[alt^=Pantera]")
        card.hover 
        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'quando passo o mouse sobre o Homem Aranha' do
        #"$" que começa com o valor
        card = find("img[alt$=Aranha]")
        card.hover 
        expect(page).to have_content 'Nome: Homem Aranha'
    end

    after(:each) do
        sleep 0.5
    end

end