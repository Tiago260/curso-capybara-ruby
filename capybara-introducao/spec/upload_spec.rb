
describe 'Upload', :upload do
    
    before(:each) do
        visit '/upload'
        #Dir.pwd ele retorna o caminho de diretorio do projeto idependente de qual local esta a pasta raiz do projeto
        #na variavel arquivo no caso esta armazenando o caminho completo do arquivo
        @arquivo = Dir.pwd + '/spec/fixtures/documento.txt'
        @imagem = Dir.pwd + '/spec/fixtures/rubo.png'
    end

    it 'upload com arquivos texto' do
        #attach_file comando para fazer upload de arquivos
        attach_file('file-upload', @arquivo)
        click_button 'Upload'
    end

    it 'upload de imagem', :upload_imagem do
        attach_file('file-upload', @imagem)
        click_button 'Upload'
        #inpecionando se o src da imagem contem o valor 'robo.png'
        img = find('#new-image')
        expect(img[:src]).to include 'rubo.png'
    end

    after(:each) do
        sleep 3
    end

end