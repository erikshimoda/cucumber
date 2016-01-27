# encoding: utf-8
class LoginPage < BindingBase
  
  def logIn (user, password)
    page.driver.within_frame('iframeLogin') do
      fill_in 'signinField', with: user
      fill_in 'password', with: password
      click_button('signinButtonSend')
    end
  end
end