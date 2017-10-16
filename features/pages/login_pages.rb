# encoding: UTF-8

class Login < SitePrism::Page
 
    set_url "https://demo.suiteondemand.com"

    element :fld_usuario, "#user_name"
    element :fld_senha, "#user_password"
    element :btn_login, "#bigbutton"
    
    def faz_login(usuario, senha)
        fld_usuario.set(usuario)
        fld_senha.set(senha)
        btn_login.click
    end
end