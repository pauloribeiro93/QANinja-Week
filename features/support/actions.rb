module Actions #App actions
  def goto_login
    visit "/"
    click_on "Login"
  end

  def login_with(email, senha)
    find("#user_email").set email
    find("#user_password").set senha
    click_on "Log in"
  end

  def login_alert
    return find(".message .message-body").text
  end

  def goto_cadastro
    visit "/"
    click_on "EXPERIMENTE AGORA"
  end
end

#Nunca coloque expect em actions
