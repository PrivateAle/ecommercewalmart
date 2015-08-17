# encoding: iso-8859-1
#!/usr/bin/env ruby

Dado(/^que insira um cep valido para consulta$/) do
  require 'uri'
  require 'net/http'
  url = URI("http://cep.correiocontrol.com.br/01508001.json")
end

Quando(/^a requisicao de consulta for realizada$/) do
  http = Net::HTTP.new(url.host, url.port)
  request = Net::HTTP::Get.new(url)
  request["authorization"] = 'Basic Og=='
end

Entao(/^devo receber a mensagem de status e resultado da pesquisa$/) do
  responses = response_from_httparty
  response = http.request(request)
  puts response.read_body
  puts responses.read_header
end

Dado(/^que insira um cep invalido para consulta$/) do
  require 'uri'
  require 'net/http'
  url = URI("http://cep.correiocontrol.com.br/09999001.json")
end

Quando(/^a requisicao de consulta invalida for realizada$/) do
  http = Net::HTTP.new(url.host, url.port)
  request = Net::HTTP::Get.new(url)
  request["authorization"] = 'Basic Og=='
end

Entao(/^devo receber a mensagem de status e resultado da pesquisa invalida$/) do
  responses = response_from_httparty
  response = http.request(request)
  puts response.read_body
  puts responses.read_header
end