#language: pt

@unidades
Funcionalidade: Validar a seção de unidades

Contexto: Acessar a página das unidades
    * Estar na pagina inicial da aplicação e acessar unidades

@selecionar_unidade
Cenario: Validar seleção de uma unidade com filtro
Quando seleciono os filtros e acesso a unidade
Então verifico se a unidade aparece corretamente