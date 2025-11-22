# Criando Relatórios Dinâmicos com o uso de Parâmetros no Power BI.


![Klabin003](https://github.com/user-attachments/assets/00a5b8f2-29e7-46c9-ae75-df4df543e1f2)


**Bootcamp Klabin - Excel e Power BI Dashboards**

---


📊 **Relatorio Dinâmico Power BI**

Projeto: Criação de Relatórios Dinâmicos com Parâmetros (Storytelling)
Repositório: relatoDinamicoPowerBi
Autor: Sérgio Santos
Data: Novembro 2025


---

**Índice**

**1. Visão Geral**


**2. Estrutura do repositório (explicação de cada arquivo)**


**3. Tecnologias utilizadas**


**4. Requisitos de hardware e software (detalhado)**


**5. Como usar o repositório — passo a passo (com e sem Power BI)**


**6. Processo ETL / Power Query — visão prática**


**7. Parâmetros e medidas dinâmicas (exemplos)**


**8. Testes, validação e entrega final**


**9. Observações finais / Boas práticas**




---

**1 — Visão Geral**

Este repositório documenta um projeto didático e profissional para criação de dashboards dinâmicos no Power BI utilizando parâmetros (parâmetros de dimensão e de métrica) e um storytelling analítico voltado à comunicação com stakeholders.

Ele contém dados simulados, scripts de Power Query (M), mockups visuais, arquivos .pbix (modelos/exports) e documentação completa para reproduzir o projeto — inclusive sem ter o Power BI instalado, usando alternativas como Excel/Figma para simular os visuais e a interação.

**O objetivo é demonstrar:**

Modelagem de dados (modelo estrela)

Uso de parâmetros para alternar dimensões e métricas

Construção de narrativa visual para apresentação ao cliente

Documentação completa para publicação no GitHub como portfólio



---

**2 — Estrutura do repositório e explicação detalhada de cada arquivo**

> A seguir está o mapa dos arquivos que você pediu para detalhar, com explicação técnica e operacional sobre cada um.



**mockup/**

**mockup/SampleDataset01.pbix**
Descrição: Arquivo Power BI contendo um dataset exemplo (amostra) usado para testes rápidos.
Utilidade: Pode ser usado para abrir no Power BI Desktop e conferir a modelagem, relações e alguns visuais de exemplo. Contém tabelas de dimensão e a tabela fato (amostra).
Observação: Se você não tem Power BI, este PBIX serve como referência — abra-o em outro computador ou converta elementos relevantes em documentação.

**mockup/dashboard_storytelling.pbix**
Descrição: Arquivo Power BI com o relatório final de storytelling. Contém as páginas / visuais projetados para apresentação ao cliente (página executiva, análise por categoria, análise por métrica, filtros/segmentações via parâmetros).
Utilidade: Versão final do dashboard, usada como entrega técnica. Inclui medidas DAX críticas, páginas bem estruturadas e bookmarks para apresentação.
Observação: PBIX pode ser grande — mantenha backup do arquivo. Caso não possua Power BI, veja as imagens mockup em /assets e os passos de simulação em /docs.

**mockup/dashboard_layout.fig**
Descrição: Template de layout (Figma) com o design do dashboard. Contém telas (frames) com posicionamento de visuais, paleta de cores, tipografia e fluxo de storytelling.
Utilidade: Ideal para quem deseja reproduzir o layout em Figma (design) ou exportar imagens para usar no README ou na apresentação.
Observação: Abra em Figma (web ou desktop) para visualizar e editar.



---

**assets/**

**assets/mockup_relatorio.png**
Descrição: Imagem PNG (mockup) do dashboard final — visão executiva.
Utilidade: Use em README, apresentação ao cliente ou portfólio. Serve como “evidência visual” quando o PBIX não pode ser aberto.

**assets/storytelling_layout.png**
Descrição: Imagem PNG com o fluxo do storytelling (slides visuais: contexto → análise → insight → recomendação).
Utilidade: Ajuda a entender a sequência narrativa a seguir durante a apresentação.

**assets/parametros_demo.gif**
Descrição: GIF animado demonstrando a troca de parâmetros (por exemplo, alternando “Categoria” e “Métrica”) e a reação dos visuais.
Utilidade: Ferramenta didática útil no README e nas redes sociais; demonstra a interatividade do painel sem necessidade de abrir o PBIX.



---

**scripts/**

**scripts/powerquery_etapas.txt**
Descrição: Documento texto com todas as etapas do processo ETL em Power Query (M). Contém snippets M, sequência de transformação, validações e notas de implementação.
Utilidade: Use como roteiro para recriar as transformações no Power BI Desktop ou em outra ferramenta (Excel Power Query). Contém exemplo de código e verificações pós-transformação.

**scripts/modelagem_dados.m**
Descrição: Arquivo com modelo de demonstração em linguagem M (representação simplificada do modelo estrela). Contém tabelas de fato/dimensão e registros de exemplo que ilustram o relacionamento entre tabelas.
Utilidade: Referência para entender as chaves primárias/estrangeiras e o design relacional do modelo.

**scripts/parametros_exemplo.json**
Descrição: JSON com parâmetros do projeto (metadados, parâmetros ETL, configuração de visualização como tema e moeda).
Utilidade: Use para documentar as opções de parâmetro e, se desejar, para automatizar geração de ambientes ou scripts que leiam essa configuração.



---

**tests/**

**tests/checklist_visuals.md**
Descrição: Checklist prático de validação visual (layout, acessibilidade, KPIs, legibilidade).
Utilidade: Guia para QA antes da entrega ao cliente — assegura que design e usabilidade estejam conformes.

**tests/validacao_dados.md**
Descrição: Documentação das validações de dados (integridade, consistência, tipos, ausência de nulos, cálculos como margem/lucro).
Utilidade: Prova técnica de que os dados usados no relatório são confiáveis e seguem regras definidas.

**tests/relatorio_execucao.md**
Descrição: Relatório de execução dos testes (logs resumidos: extração, transformação, modelagem, visualizações e performance).
Utilidade: Histórico de execução e evidência para auditoria ou revisão.



---

**data/**

**data/base_vendas.csv**
Descrição: Base de dados simulada (CSV) com vendas por data, produto, categoria, região, vendas, lucro, desconto e quantidade.
Utilidade: Fonte primária para alimentar o modelo no Power BI ou para simulação no Excel/Google Sheets.

**data/dicionario_dados02.xlsx**
Descrição: Dicionário de dados em Excel (mais detalhado), descreve cada coluna, tipo esperado, exemplos, uso nas métricas e regras de limpeza.
Utilidade: Documento de referência para ETL e validação de dados — serve como contrato entre analista e stakeholders.

**data/fonte_dados_externa.md**
Descrição: Documento com a origem/fonte (simulada) dos dados e referências a datasets públicos que inspiraram a criação dos dados.
Utilidade: Transparência sobre a origem e finalidade dos dados, importante em ambientes corporativos.



---

**docs/**

**docs/ementa_projeto.md**
Descrição: Ementa do projeto (objetivos, competências, entregáveis e critérios de avaliação).
Utilidade: Resumo acadêmico/profissional do que será entregue.

**docs/analise_parametros.md**
Descrição: Análise técnica sobre os parâmetros (definição, uso, implementação, exemplos DAX).
Utilidade: Guia para implementar as medidas dinâmicas e para explicar a lógica por trás das escolhas de parâmetros.

**docs/processo_criacao_dashboard.md**
Descrição: Passo a passo de criação do relatório, desde a importação dos dados até o deploy (inclui testes finais).
Utilidade: Manual operacional para reproduzir o trabalho.

**docs/simulacao_dashboard_sem_powerbi.md**
Descrição: Guia completo para simular o dashboard sem o Power BI (usando Excel, Google Sheets, Figma, imagens e GIFs).
Utilidade: Permite entregar prova de conceito mesmo sem o software instalado.

**docs/requisitos_tecnicos.md**
Descrição: Requisitos detalhados de hardware, software, conectividade e segurança.
Utilidade: Referência técnica para instalação e preparação do ambiente.



---

**3 — Tecnologias utilizadas**

**Microsoft Power BI Desktop** — Criação do modelo, transformações com Power Query (M), medidas DAX, visuais e bookmarks.

**Power Query M Language** — Linguagem de transformação e preparação de dados (ETL).

**DAX (Data Analysis Expressions)** — Linguagem de medidas e colunas calculadas no modelo.

**Excel / Google Sheets** — Alternativa para preparar dados, validar cálculos e simular visuais.

**Figma** — Design e prototipagem do layout do dashboard e storytelling.

**Git & GitHub** — Versionamento, hospedagem do repositório e portfólio público.

**Markdown (.md)** — Documentação legível e versionada no repositório.

**JSON** — Parametrização e metadados do projeto.



---

**4 — Requisitos de hardware e software**

**Hardware recomendado**

**CPU:** Intel i5 / Ryzen 5 (ou melhor)

**RAM:** 8 GB (mínimo 4 GB; datasets grandes exigem 16 GB+)

**Armazenamento:** SSD com ao menos 10 GB livres

**Monitor:** Full HD (1920×1080) — ideal para painéis com vários visuais


**Software recomendado**

**OS:** Windows 10/11 (Power BI Desktop é nativamente suportado no Windows)

**Power BI Desktop:** versão mais recente (recomenda-se atualizar via Microsoft Store)

**Alternativas para simulação:0** Excel 365 / Google Sheets, Figma (web)

**Git:** para versionamento (linha de comando ou GitHub Desktop)

**VS Code:** para edição de scripts/Markdown opcional


**Rede e segurança**

Conexão à internet para GitHub e Figma

Políticas de segurança: os dados deste repositório são simulados — não há PII. Quando usar dados reais, siga GDPR/LGPD e políticas internas.



---

**5 — Como usar o repositório — passo a passo**

A — Se você tem Power BI Desktop

**1. Clone o repositório:**

git clone https://github.com/Santosdevbjj/relatoDinamicoPowerBi.git


2. Abra mockup/dashboard_storytelling.pbix no Power BI Desktop.


3. Atualize a conexão dos dados para apontar para data/base_vendas.csv (ou mantenha os dados embutidos).


4. Verifique as transformações em Transform Data (Power Query) e compare com scripts/powerquery_etapas.txt.


5. Teste os parâmetros/segementadores e valide a medida dinâmica ValorSelecionado (ex.: DAX de exemplo em docs/analise_parametros.md).


6. Ajuste visuais se necessário, salve e publique no Power BI Service (se tiver conta).



B — Se você não tem Power BI Desktop (SIMULAÇÃO — procedimento didático)

1. Abra data/base_vendas.csv no Excel ou Google Sheets.


**2. Use tabelas dinâmicas e segmentações (dropdowns) para simular os parâmetros:**

Parâmetro Categoria: menu suspenso com [Produto, Categoria, Região]

Parâmetro Métrica: menu suspenso com [Vendas, Lucro, Desconto]



**3. Recrie os gráficos principais (barras, linhas, cartões) em Excel/Sheets.**


**4. Abra mockup/dashboard_layout.fig** no Figma e importe as imagens/exports geradas para montar o mockup do dashboard com interação prototipada (links entre telas).


**5. Use assets/parametros_demo.gif** como referência de comportamento interativo.


**6. Documente a simulação usando docs/simulacao_dashboard_sem_powerbi.md** e salve imagens .png em /assets.




---

**6 — Processo ETL / Power Query** — visão prática (resumo)

**Etapas chaves:**

1. Importar CSV (data/base_vendas.csv)


2. Promover cabeçalhos e definir tipos (Date, Text, Decimal, Int)


3. Normalizar strings (trim, proper case) e valores nulos


4. Criar colunas derivadas: Ano, Mês, Margem (lucro/receita * 100)


5. Mapear e relacionar IDs com dimensões (DimProdutos, DimRegioes, DimClientes)


6. Carregar tabelas tratadas no modelo como FatoVendas + dimensões



**Validações:**

Checar duplicidades de chaves

Conferir soma de receita antes/depois da transformação

Verificar conversão correta de datas



-  **Referência completa:** scripts/powerquery_etapas.txt




---

**7 — Parâmetros e medidas dinâmicas — exemplos práticos**

**A — Parâmetros (conceito)**

ParamCategoria: alterna o eixo X entre Produto, Categoria e Região.

ParamValor: alterna a métrica exibida entre Vendas, Lucro e Desconto.


**B — Medida DAX exemplo (medida dinâmica)**

ValorSelecionado =
VAR escolha = SELECTEDVALUE('param_valor'[Valor], "Vendas")
RETURN
SWITCH(
    escolha,
    "Vendas", SUM('FatoVendas'[Vendas]),
    "Lucro", SUM('FatoVendas'[Lucro]),
    "Desconto", AVERAGE('FatoVendas'[Desconto]),
    SUM('FatoVendas'[Vendas])  // default
)

**C — Uso no visual**

Use ValorSelecionado no eixo Y.

Use um campo calculado que retorne o rótulo dinâmico para o título do visual (ex.: "Vendas por " & SELECTEDVALUE('param_categoria'[Valor])).


- Mais detalhes e variações em docs/analise_parametros.md.




---

**8 — Testes, validação e entrega final**

**Checklist prático**

Verificar que todos os visuais mostram dados coerentes para todas as combinações de parâmetros. (tests/checklist_visuals.md)

Validar cálculos (Lucro, Margem) conforme tests/validacao_dados.md.

Gerar o relatório de execução (tests/relatorio_execucao.md) com logs de carga e performance.


**Entregáveis**

**Repositório público** com toda documentação, scripts e mockups.

**Arquivo PBIX final** (mockup/dashboard_storytelling.pbix) — se possível.

**Versão simulada (Figma + imagens + GIF)** para apresentação sem Power BI.

**Dicionário de dados atualizado** (data/dicionario_dados02.xlsx).



---

**9 — Observações finais e boas práticas**

**Documente sempre:** cada transformação e cada medida deve ter um comentário explicando por que foi criada, não apenas o que faz.

**Controle de versões:** salve versões incrementais do PBIX (ex.: v1, v1.1) para facilitar rollbacks.

**Reprodutibilidade:** mantenha o CSV e o dicionário atualizados para que terceiros reproduzam o relatório.

**Acessibilidade:** use cores com contraste e tooltips explicativos para tornar o relatório acessível.

**Segurança:** nunca comitar dados sensíveis no repositório público.



---


**Autor:** Sérgio Santos 

---

**Contato:**

[![Portfólio Sérgio Santos](https://img.shields.io/badge/Portfólio-Sérgio_Santos-111827?style=for-the-badge&logo=githubpages&logoColor=00eaff)](https://santosdevbjj.github.io/portfolio/)
[![LinkedIn Sérgio Santos](https://img.shields.io/badge/LinkedIn-Sérgio_Santos-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/santossergioluiz) 

---



