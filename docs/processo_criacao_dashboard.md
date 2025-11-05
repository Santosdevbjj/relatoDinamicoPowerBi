## 📂 **docs/processo_criacao_dashboard.md**

```markdown
```
# 🧭 Processo de Criação do Dashboard

## 1️⃣ Coleta e Entendimento dos Dados
- Importação do arquivo `base_vendas.csv`
- Análise da estrutura de dados (colunas, tipos e integridade)
- Criação do dicionário de dados (`dicionario_dados.xlsx`)

## 2️⃣ Modelagem e Limpeza (Power Query)
Etapas documentadas no arquivo `/scripts/powerquery_etapas.txt`:
1. Alterar tipos de dados
2. Remover colunas nulas
3. Corrigir formato de data
4. Calcular campo "Margem de Lucro (%)"
5. Carregar dados no modelo

## 3️⃣ Criação dos Parâmetros
- `param_categoria`: Produto | Categoria | Região  
- `param_valor`: Vendas | Lucro | Desconto

## 4️⃣ Desenvolvimento dos Visuais
**Página 1 — Visão por Categoria**
- Gráfico de barras dinâmico (eixo definido pelo parâmetro de categoria)
- Cartão com total de vendas

**Página 2 — Visão Financeira**
- Gráfico de colunas com eixo dinâmico (métrica definida por `param_valor`)
- Indicadores de performance

## 5️⃣ Aplicação do Storytelling
Cada página conta uma parte da história:
- “De onde vêm nossos resultados?”
- “Como nossos indicadores se comportam?”

## 6️⃣ Testes e Validação
- Testar todas as combinações de parâmetros
- Validar somatórios e médias
- Verificar consistência de medidas DAX

## 7️⃣ Publicação e Documentação
- Criar mockups visuais em `/assets`
- Escrever documentação final em `/docs`
- Subir repositório no GitHub
