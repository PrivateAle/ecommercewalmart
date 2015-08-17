# encoding: utf-8
#!/usr/bin/env ruby

Dado(/^Eu entro no site do Walmart$/) do
  visit "http://www.walmart.com.br/busca"
end

Quando(/^Entao eu digito "([^"]*)" na barra de "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^Clico no botao "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Entao(/^Eu recebo o resultado da busca por produto$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado(/^Eu verifico se a busca me retornou algum resultado valido nao pode estar "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Dado(/^Eu clico no produto para adicionar ao meu "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^Eu clico no icone "([^"]*)" para efetivar a transacao$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Entao(/^Entao Eu visualizo a pagina do "([^"]*)" e vejo que meu produto foi adicionado corretamente$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end



