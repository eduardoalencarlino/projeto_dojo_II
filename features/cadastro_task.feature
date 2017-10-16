#language: pt
@dojo
Funcionalidade: Cadastro de tarefas
    Eu como usuário do site SuiteCRM
    Quero validar o Cadastro,Edição e Deleção de Tarefas

    Contexto: Usuario logado 
        Dado que esteja logado na dashboard 

    @cadastrar
    Cenário: Cadastrar Tarefa
        Quando acessar a tela de cadastro de Tarefas
        E criar uma Tarefa
        Então a Tarefa deve ser gravada com sucesso

    @editar
    Cenário: Editar Tarefa
        Quando faço a busca da Tarefa que desejo Editar
        E edito algumas informações da tarefa
        Então a Tarefa deve ser atualizada com as alterações   
    
    @excluir
    Cenário: Excluir Tarefa
        Quando excluo a Tarefa que desejo
        Então a Tarefa deve ser deletada com sucesso