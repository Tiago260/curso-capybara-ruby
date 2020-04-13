describe 'Alertas em JS', :alerts do
    before(:each) do
        visit '/javascript_alerts'
    end

    it 'alerta' do
        click_button 'Alerta'
        #.browser significa que vc está trabalhando com o navegador da sua pagina
        #.switch_to apontar para outra janela 'levando um conta que o alert é outra janela'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eq 'Isto é uma mensagem de alerta'
        
    end

    it 'sim confirma' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eq 'E ai confirma?'
        #accept para aceitar a mensagem "OK"
        page.driver.browser.switch_to.alert.accept
        expect(msg).to have_content 'Mensagem confirmada'
    end

    it 'não confirma' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eq 'E ai confirma?'
        #dismiss para cancelar a mensagem "Cancelar"
        page.driver.browser.switch_to.alert.dismiss
        expect(msg).to have_content 'Mensagem não confirmada'
    end

    it 'accept prompt', :accept_prompt do
        click_button 'Prompt'
        #accept_prompt para preencher o alert prompt e confirmar / 'with' = 'com'
        accept_prompt(with: 'Tiago')
        expect(page).to have_content 'Olá, Tiago'
    end

    it 'dismiss prompt', :dismiss_prompt do
        # Quando não aceito o prompt
        click_button 'Prompt'
        dismiss_prompt
        expect(page).to have_content 'Olá, null'
    end

    after(:each) do
        sleep 2
    end

end