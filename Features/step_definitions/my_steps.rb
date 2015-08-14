Given(/^Eu entro no site do Walmart$/) do
  visit HomeWalmart
  expected(//*[@id='site-topbar']/div[1]/a).to have_content 'Walmart'
end

When(/^Entao eu digito "([^"]*)" na barra de "([^"]*)"$/) do |arg1, arg2|
  on(HomeWalmart).page.find(:object_id,"suggestion-search")
  on(HomeWalmart).fill_in'olá o que você procura?', :with=> "TV"
end

And(/^Clico no botao "([^"]*)"$/) do |buscar|
  click_button 'Procurar'
end

Then(/^Eu recebo o resultado da busca por produto$/) do
  expected(page).to have_content 'Eletrônicos'
end

Given(/^Eu verifico se a busca me retornou algum resultado valido nao pode estar "([^"]*)"$/) do |arg|
  click_button 'Todos os 391 Resultados'
end


When(/^Então Eu clico em um modelo de "([^"]*)" retornado pela busca$/) do |arg|
  click_link 'Smart TV LED Full HD 43" LG 43LF6350 WebOS 3 USB 3 HDMI Wi-Fi integrado'
end

Then(/^Eu visualizo a pagina com a informacoes do produto que cliquei$/) do
  expected(page).to have_content 'Smart TV LED Full HD 43" LG 43LF6350 WebOS 3 USB 3 HDMI Wi-Fi integrado'
end

Given(/^Eu clico no produto para adicionar ao meu "([^"]*)"$/) do |arg|
  click_button 'buy-button'
  click_button 'Close (Esc)'
end

When(/^Eu clico no icone "([^"]*)" para efetivar a transacao$/) do |arg|
 click_button'cart-icon'
end

Then(/^Entao Eu visualizo a pagina do "([^"]*)" e vejo que meu produto foi adicionado corretamente$/) do |arg|
  expected(//*[@id='main']/div/section/div/div[1]/h2).to have_content 'Meu Carrinho'
  expected(//*[@id='main']/div/section/div/div[1]/h2/span).to have_content '(1 item)'
end


