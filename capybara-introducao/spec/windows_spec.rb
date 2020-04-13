describe 'Alterando janelas', :wnd do
    
    before(:each) do
        visit '/windows'
    end

    it 'nova janela' do
        #window_opened_by para capturar dados da nova janela
        nova_janela = window_opened_by { click_link 'Clique aqui' }

        #within_window para trabalhar em uma nova janela
        within_window -> { page.title == 'Nova Janela' } do
            expect(page).to have_content 'Aqui temos uma nova janela \o/'
        end

        #fechando nova janela
        nova_janela.close
        #verificando que a janela está fechada
        expect(nova_janela.closed?).to be true
    end

    after(:each) do
        sleep 2
    end
end