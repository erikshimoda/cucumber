# language: pt
#encoding: utf-8

Funcionalidade: Validar a página de compras do Walmart
	Pesquisando pela palavra chave TV
	Escolher um modelo
	Adicionar ao carrinho de compras
 
  Cenário: Comprar uma TV
    Dado que eu estou logado no portal do Wallmart
    Quando eu procuro pelo termo "TV"
    E eu vejo os resultados
	E eu clico em um dos itens retornados
	Então é exibido a página de detalhes do produto
	E eu adiciono o produto no carrinho
	Então eu verifico se foi adicionado corretamente no carrinho
    Então eu faço login no site com o usuário "foo@gmail.com" e senha "Foo#321654"