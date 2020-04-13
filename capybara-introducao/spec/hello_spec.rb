

describe 'Meu primeiro script', :hello, :smoke do 

    #comando para alterar resolução de tela
    before(:each) do
        page.current_window.resize_to(1280, 800)
    end

    it 'visitar página' do
        visit '/'
        puts page.title
    end
end
