# encoding: iso-8859-1
#!/usr/bin/env ruby

Dado(/^que eu acesso o walmart$/) do
  visit 'http://www.walmart.com.br'
end

Quando(/^eu buscar por um produto do tipo televisao$/) do
  page.find(:id, 'suggestion-search').click
  fill_in'suggestion-search',with=> 'TV'
  click_button 'search-icon'
  page.all(:id, 'category-products')[2].click
  end

E(/^adicionar no carrinho$/) do
  have_content'Smart TV LED 3D Ultra HD/4k Curva 55 Samsung UN55JU7500 Quad Core Clear Motion Rate 1200Hz Função Game'
  click_button'buy-button btn btn-success'
  click_button'mfp-close'
  end

Entao(/^o item deve estar no carrinho$/) do
  click_button'cart-icon'
  have_content 'Meu Carrinho'
  have_content '1item'
  have_content'Smart TV LED 3D Ultra HD/4k Curva 55'
