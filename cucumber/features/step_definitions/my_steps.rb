# encoding: iso-8859-1
#!/usr/bin/env ruby

Dado(/^que eu acessei o walmart$/) do
  visit 'http://www.walmart.com.br'
end

Quando(/^eu buscar por um produto do tipo televisao$/) do
  fill_in 'suggestion-search', with: "TV"
  click_button 'Procurar'
  page.all(:css, '.product-title')[0].click
  sleep 03
  end

E(/^adicionar no carrinho$/) do
  click_button 'Adicionar ao carrinho'
  click_button 'Continuar'
  end

Entao(/^o item deve estar no carrinho$/) do
  find(:css, '.topbar-buttons.open-link.cart-link').click
  expect(page).to have_content 'Smart TV LED Full HD'
  expect(page).to have_content '1 item'
  find(:css, '#btn-finalize-cart').click
  find(:css, '.mfp-close').click
end
