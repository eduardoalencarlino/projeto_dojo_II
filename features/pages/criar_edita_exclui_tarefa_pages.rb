# encoding: UTF-8

class Criacao_tarefa < SitePrism::Page
    
    #para criação da tarefa
    element :fld_nome, "#name" 
    element :fld_data_inicio, "#date_start_date"
    element :list_status, "#status"
    element :list_prioridade, "#priority"
    element :list_relacao, "#parent_type"
    element :assigned_to_field, "#assigned_user_name"
    elements :btn_salvar, "input[type=submit]" 

    #após a busca para editar a tarefa
    elements :btn_acao_tarefa, "#tab-actions"
    element :btn_editar_tarefa, "input[title='Edit']"
    element :btn_excluir_tarefa, "#delete_button"
    element :fld_descricao_tarefa, "#description"
    element :text_no_results, "#pagecontent > table > tbody:nth-child(3) > tr > td"

    #para exclusão da tarefa
    element :link_atividades, "#grouptab_3"
    element :link_tarefa, "#moduleTab_6_Tasks"
    elements :check_item, ".listview-checkbox"
    element :btn_acao_para_deletar, "#actionLinkTop"
    elements :btn_deletar, "#delete_listview_top"
    #element :link_tarefa, :xpath, "//*[@id='MassUpdate']/div[3]/table/tbody/tr[1]/td[4]/b/a"


    
    def criar_tarefa(nome_tarefa)
        fld_nome.set(nome_tarefa)
        list_status.select("In Progress")
        list_prioridade.select("Medium")
        btn_salvar.last.click  
    end

    def editar_tarefa(descricao_tarefa)
        btn_acao_tarefa.first.click
        btn_editar_tarefa.click
        list_status.select("Completed") 
        list_relacao.select("Project")   
        list_prioridade.select("High") 
        fld_descricao_tarefa.set(descricao_tarefa)
        btn_salvar.last.click     
    end    

    
    def busca_para_excluir_tarefa
        link_atividades.click
        link_tarefa.click
    end

    def excluir_tarefa
        link_atividades.click
        link_tarefa.click
        sleep 2
        check_item.first.click
        btn_acao_para_deletar.click    
        btn_deletar.last.click
    end    

end