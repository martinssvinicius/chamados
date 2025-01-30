CONSIDERAÇÕES INICIAIS:

- Neste chamado vamos desenvolver a rotina para cadastro do Conselho Municipal de Educação.


DESENVOLVIMENTO:

Cadastrar uma nova rotina no EGA para a nova rotina de Conselho Municipal de Educação.
Cadastrar os formulários padrão para a nova rotina (consultar, incluir, alterar, excluir e visualizar).
Relacionado ao chamado existe um script para criação da tabela da nova rotina, criar novo modelo e persistência com base nas informações dessa tabela, utilizar a nomenclatura base "ConselhoMunicipalEducacao".
Para todas as novas rotinas criadas neste chamado deverá ser criado também a respectiva origem de dados, para que possamos utilizar essas informações em futuros relatórios.

ACESSO

1 CONSELHO MUNICIPAL DE EDUCAÇÃO (Gestão Administrativa Escolar » Gestão » Conselho Municipal de Educação)

1.1 INCLUSÃO
- A tela será uma Wizard.
- Acessar o requisito EGA144 e verificar o arquivo 3 - "Atualizado".
- Neste chamado vamos desenvolver apenas a aba "Dados Principais", no chamado 450124 será desenvolvido a aba "Regimento Interno".
- Vamos seguir como base o protótipo, porém haverá algumas alterações em alguns campos, verificar abaixo os componentes que vamos implementar nessa tela:
* Componentes:
1 - Código: Serial;
2 - Nome: Texto; Máx. 100 caracteres; Obrigatório;
3 - Sigla: Texto; Máx. 6 Caracteres; Obrigatório; Todos os caracteres aqui informados devem ser automaticamente convertidos para letras maiúsculas, verificar como foi feito no campo sigla da tela de cadastro de turma (Gestão Administrativa Escolar » Gestão » Escolar » Turmas » Alterar Turma).
4 - Categoria: Lista; Obrigatório; O mesmo componente que implementaremos aqui está implementado na aba "Atos Legais" da tela de cadastro do Estabelecimento da Educação, verificar como foi feito lá (Gestão Administrativa Escolar » Cadastros » Estabelecimentos de Ensino » Alterar Estabelecimento de Ensino).
5 - Texto Jurídico: Campo Externo de Texto Jurídico; Obrigatório; Este campo também está implementado na tela de cadastro do estabelecimento de ensino, verificar como foi feito lá e implementar aqui também. 
- Ao carregar o texto jurídico deverá ser carregado o campo de categoria com a categoria do respectivo texto.
- Este campo deverá ser filtrado pelo campo de categoria que foi informado acima.
6 - Ementa: Texto; Desabilitado; Caregar com a ementa do texto jurídico, realizar o carregamento no momento em que o texto jurídico for selecionado.
7 - Duração do Mandato: Lista; Opcional; Opções: 1 - "1 ano", 2 - "2 anos", 3 - "3 anos" e 4 - "4 anos".
8 - Local de Trabalho/Sede das Reuniões: Texto; Máx. 200 caracteres; Obrigatório;
9 - Periodicidade de Reuniões: Lista; Obrigatório; Opções: 1 - "Semanal", 2 - "Mensal", 3 - "Bimestral",  4 - "Trimestral", 5 - "Quadrimestral", 6 - "Semestral" e 7 - "Anual".
10 - Membros: Fieldset.
10.1 - Quantidade de Titulares: Smallint; Opcional; Valor Mín.: 1; Valor Máx.: 50.
10.2 - Quantidade de Suplentes: Smallint; Opcional; Valor Mín.: 1; Valor Máx.: 50.

1.2 ALTERAÇÃO
- Mesmos componentes do item 1.1.
- Permitir alterar apenas os campos Duração do Mandato, Local de Trabalho, Periodicidade de Reuniões, Quantidade de Titulares e Quantidade de Suplentes.

1.3 CONSULTA
- Apresentar os seguintes campos:
1 - Código: Inicialmente oculto.
2 - Nome.
3 - Sigla.
4 - Duração do Mandato.
5 - Membros: Booleano; Carregar com "Sim" quando existir quantidade de titulares ou quantidade de suplentes informada para o conselho, caso contrário carregar com "Não".


TESTES:
- Acessar a consulta de Conselho Municipal de Educação.
- Verificar se os campos são apresentados corretamente na consulta.
- Na inclusão, verificar que não poderá ser incluído dois conselhos com o mesmo nome.
- Verificar se os campos estão com a quantidade máxima de caracteres conforme definido no tópico de desenvolvimento.
- Verificar se os campos de categoria e descrição da lei de criação são carregados no momento que o texto juridico for informado.
- Quando existir uma categoria informada, o campo de texto juridico deve filtrar apenas textos relacionados à categoria.
- Verificar se os campos de quantidade de titulares e quantidade de suplentes aceitam apenas valores entre 1 e 50.
