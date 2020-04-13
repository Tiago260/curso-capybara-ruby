
describe 'iframes' do
    
    describe 'bom', :nice_iframe do

        before(:each) do 
            visit '/nice_iframe'
        end
   
        it  'adicionar ao carrinho' do
            #within_frame para trabalhar com o escopo do id
            within_frame('burgerId') do
               produto = find('.menu-item-info-box', text: 'REFRIGERANTE')
               produto.find('a').click
               expect(find('#cart')).to have_content 'R$ 4,50'
            end
        end

        it  'carrinho deve estar vazio' do
            #criando script para adicionar id no iframe "esta sendo criado como string"
            script = '$(".box-iframe").attr("id", "tempId");'
            #page.execute_script para executar o script na pagina
            page.execute_script(script)
            within_frame('tempId') do
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
            end
        end
   
        after(:each) do
            sleep 1
        end

    end

end