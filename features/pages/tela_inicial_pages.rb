# encoding: UTF-8

class Tela_inicial < SitePrism::Page

    elements :btn_criar, "li[id='quickcreatetop']"
    elements :link_cria_tarefa, "#quickcreatetop > ul > li.last > a"
    element  :btn_lupa, "#searchbutton"
    elements :fld_busca, "input[id='query_string']"
    elements :btn_lupa2, "button[class='btn btn-default']"
    element :link_nome_tarefa, "#pagecontent > table > tbody:nth-child(3) > tr > td:nth-child(2) > a"

    
    def acessa_tela_criar_tarefa
        btn_criar.last.click
        link_cria_tarefa.last.click  
    end

    def busca_tarefa(tarefa)
        btn_lupa.click
        fld_busca.last.set(tarefa)  
        btn_lupa2.first.click
    end



end