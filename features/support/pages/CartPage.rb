# encoding: utf-8
class CartPage < BindingBase
  def openCart
    find(:css, '.cart a.cart-link').click
  end

  def getTitleOfItemAddedToCart
    find('.link.link-description').text
  end

  def getHeaderOfCart
    find('div.page-title.clearfix h2').text
  end

  def completeBuy
    click_button("Finalizar compra", :match => :first)
  end
  
end