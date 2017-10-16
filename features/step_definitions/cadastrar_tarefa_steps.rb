# encoding: UTF-8

Dado("que esteja logado na dashboard") do                                       
    Login.new.load
    Login.new.faz_login("will", "will")
end                                                                            
                                                                                
Quando("acessar a tela de cadastro de Tarefas") do                             
    Tela_inicial.new.acessa_tela_criar_tarefa
end                                                                            
                                                                                
Quando("criar uma Tarefa") do 
    Criacao_tarefa.new.criar_tarefa($nome_tarefa)
end                                                                            
                                                                                                                                                                                                                          
Então("a Tarefa deve ser gravada com sucesso") do                                
    expect(Criacao_tarefa.new.fld_nome.text).to eql($nome_tarefa)  
end                                                                            
                                                                                                                                                                                                                               