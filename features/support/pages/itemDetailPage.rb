# encoding: utf-8
class ItemDetailPage < BindingBase

  def addProductToCart
    click_button("Adicionar ao carrinho")
    click_button("Continuar")
  end
end