# encoding: utf-8
class MainPage < BindingBase

  search_field_id = "suggestion-search"
  search_icon_id = "search-icon"

  def searchProductByKeyword(keyword)
    fill_in('suggestion-search', :with => keyword)
    find('.search-icon', :text=>"Procurar").click
  end
  
  def openFirstItem
    first('img.loading').click
  end
  
  def getTitleOfFistItemBeforeOpen
    first('.product-title').text
  end
  
  def getTitleOfFistItemAfterOpen
    find('div.product-title-header h1').text
  end

  
  def visitMainPage
    visit $mainPageUrl
  end
end
