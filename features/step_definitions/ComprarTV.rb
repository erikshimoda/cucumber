# encoding: utf-8
Before do
  $MainPage = MainPage.new
  $ItemDetailPage = ItemDetailPage.new
  $CartPage = CartPage.new
  $LoginPage = LoginPage.new
end

Dado(/^que eu estou logado no portal do Wallmart$/) do
  $MainPage.visitMainPage
end

Quando(/^eu procuro pelo termo "([^"]*)"$/) do |keyword|
  $keyword = keyword
  $MainPage.searchProductByKeyword keyword
end

Quando(/^eu vejo os resultados$/) do
  expect(should have_css('.product-title', :text => $keyword))
end

Quando(/^eu clico em um dos itens retornados$/) do
  ItemTitleBeforeOpen = $MainPage.getTitleOfFistItemBeforeOpen
  $MainPage.openFirstItem
end

Então(/^é exibido a página de detalhes do produto$/) do
  ItemTitleAfterOpen = $MainPage.getTitleOfFistItemAfterOpen
  ItemTitleBeforeOpen.should eq(ItemTitleAfterOpen)
end

Então(/^eu adiciono o produto no carrinho$/) do
  $ItemDetailPage.addProductToCart()
end

Então(/^eu verifico se foi adicionado corretamente no carrinho$/) do
  $CartPage.openCart
  ItemTitleOnCart = $CartPage.getTitleOfItemAddedToCart
  CartHeader = $CartPage.getHeaderOfCart

  ItemTitleBeforeOpen.should eq(ItemTitleOnCart)
  CartHeader.should eq ("Meu carrinho (1 item)")
end

Então(/^eu faço login no site com o usuário "([^"]*)" e senha "([^"]*)"$/) do |user, password|
  $CartPage.completeBuy
  $LoginPage.logIn(user, password)
end