require 'capybara'
require 'capybara/rspec'


RSpec.configure do |config|
  
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.include Capybara::DSL
  
  #para aplicar resolução de tela em todos os testes
    config.before(:example) do
     page.current_window.resize_to(1280, 800)
    end

  #configuração para tirar print no final de cada cenário
    config.after(:example) do |e|
      nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
      # .exception pega a falha ou exceção
      page.save_screenshot('log/' + nome + '.png') if e.exception
    end

  end

Capybara.configure do |config|
   #configurando navegador padrão
   #para executar automação fantasma :selenium_chrome_headless
   config.default_driver = :selenium_chrome
   #configurando tempo de espera "até" encontrar elementos
   config.default_max_wait_time = 5
   #configurando URL padrão
   config.app_host = 'https://training-wheels-protocol.herokuapp.com'
end
