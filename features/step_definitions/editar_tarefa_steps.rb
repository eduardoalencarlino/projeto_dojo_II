Quando("faço a busca da Tarefa que desejo Editar") do                            
    Tela_inicial.new.busca_tarefa($nome_tarefa)
    Tela_inicial.new.link_nome_tarefa.click
end                                                                            
                                                                                
Quando("edito algumas informações da tarefa") do                               
    Criacao_tarefa.new.editar_tarefa("Editando a tarefa criada pela automação")
end                                                                            
                                                                                
Então("a Tarefa deve ser atualizada com as alterações") do    
    expect(Criacao_tarefa.new.fld_nome(visible:false).text).to eql($nome_tarefa)           
    expect(Criacao_tarefa.new.list_status(visible:false).value).to eql("Completed")  
    expect(Criacao_tarefa.new.list_prioridade(visible:false).value).to eql("High")
    expect(Criacao_tarefa.new.fld_descricao_tarefa(visible:false).text).to eql("Editando a tarefa criada pela automação")  
end                                                                           