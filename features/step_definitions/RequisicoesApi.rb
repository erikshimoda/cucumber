# encoding: utf-8
Before do
  $Requests = Requests.new
end

Quando(/^eu configuro cabeçalho JSON$/) do
  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'
end

Quando(/^eu acesso a API e realizo um GET Request para "([^"]*)"$/) do |arg1|
  $Posts.consultPost arg1
  expect(response.status).to eq(200)
  expect(last_response.status).to eq(200)
end

Então(/^a resposta deve ser código "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^informo os dados título "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^eu acesso a API e realizo um POST Request para "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^informo os dados$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^um novo post inserido$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^eu acesso a API e realizo um DELETE Request para "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
