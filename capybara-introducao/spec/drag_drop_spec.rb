describe 'Mouse Hover', :drop do

    before(:each) do
        visit '/drag_and_drop'
    end

    it 'homem aranha pertence ao time do stark' do
        
        stark = find('.team-stark .column')
        cap = find('.team-cap .column')

        spiderman = find('img[alt*=Aranha]')
        #drag_to para mover o elemento
        spiderman.drag_to stark

        #validando se existe na div stark
        expect(stark).to have_css 'img[alt*=Aranha]'
        #validando se não existe na div cap
        expect(cap).not_to have_css 'img[alt*=Aranha]'
    end

    after(:each) do
        sleep 1
    end



end
