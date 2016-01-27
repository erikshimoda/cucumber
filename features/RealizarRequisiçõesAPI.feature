# language: pt
#encoding: utf-8
Funcionalidade:
  Com o Cucumber
  Acessar uma API
  Realizo requisições para consultar, atualizar, apagar e atualizar Posts

  Cenário: Acessar a API e retornar todos os posts
    Quando eu configuro cabeçalho JSON 
    E eu acesso a API e realizo um GET Request para "/posts"
	Então a resposta deve ser código "200"      

  Cenário: Acessar a API e retornar posts por ID
    Quando eu configuro cabeçalho JSON
    Quando eu acesso a API e realizo um GET Request para "/posts/1"
	Então a resposta deve ser código "200"      
  
  Cenário: Acessar a API e tentar consultar um post inexistente, deve retoranr erro 404
    Quando eu configuro cabeçalho JSON
	Quando eu acesso a API e realizo um GET Request para "/posts/666"
	Então a resposta deve ser código "404"

  Cenário: Acessar a API e enviar um POST requiest para atualizar o título de um POST
    Quando eu configuro cabeçalho JSON 
    E eu acesso a API e realizo um GET Request para "/posts/10"
	E informo os dados título "novo título"
	Então a resposta deve ser código "200"     

  Cenário: Acessar a API e retornar todos os posts
    Quando eu configuro cabeçalho JSON 
    E eu acesso a API e realizo um POST Request para "/posts"
	E informo os dados 
		| ID  | 			| "01" |
		| ID do Usuario | 	| "25" |
		| Título | 			| "Teste request post" |
		| Corpo | 			| "lorem ipsum" |
	Então a resposta deve ser código "200"
	E um novo post inserido      

  Cenário: Acessar a API e apagar um post por ID
    Quando eu configuro cabeçalho JSON 
    E eu acesso a API e realizo um GET Request para "/posts/10"
	Então a resposta deve ser código "200"      

  Cenário: Acessar a API e apagar um post por ID inexisnte
    Quando eu configuro cabeçalho JSON
    Quando eu acesso a API e realizo um DELETE Request para "/posts/666"
	Então a resposta deve ser código "404"