                                                                               
Quando("excluo a Tarefa que desejo") do              
    Criacao_tarefa.new.excluir_tarefa 
    sleep 3
    page.driver.browser.switch_to.alert.accept   
end     
                                                                                                                                                                                                                                                  
Então("a Tarefa deve ser deletada com sucesso") do  
    expect(page).to have_no_content($nome_tarefa)    
end               