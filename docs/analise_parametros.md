# ⚙️ Análise de Parâmetros no Power BI

## 🧩 Introdução
Parâmetros são variáveis criadas para permitir **interatividade e flexibilidade** na análise de dados.  
Com eles, é possível **trocar campos ou medidas** sem duplicar visuais.

---

## 🔹 Parâmetro 1: Categoria
**Nome:** `param_categoria`  
**Tipo:** Campo de texto (Lista de Opções)

| Opção | Descrição |
|-------|------------|
| Produto | Analisa métricas agrupadas por produto |
| Categoria | Analisa o desempenho por categoria de produto |
| Região | Analisa a performance de vendas por região |

**Aplicação Visual:**  
Usado em gráficos de barras e segmentações dinâmicas.

---

## 🔹 Parâmetro 2: Métrica
**Nome:** `param_valor`  
**Tipo:** Campo de medida numérica (Lista de Opções)

| Opção | Descrição |
|-------|------------|
| Vendas | Exibe o total de vendas (R$) |
| Lucro | Exibe o total de lucro (R$) |
| Desconto | Exibe o percentual médio de desconto |

**Aplicação Visual:**  
Controla o eixo Y de gráficos dinâmicos.

---

## 🧮 Exemplo de Implementação DAX

```DAX
// Medida Dinâmica
ValorSelecionado =
SWITCH(
    SELECTEDVALUE('param_valor'[Valor]),
    "Vendas", SUM('base_vendas'[Vendas]),
    "Lucro", SUM('base_vendas'[Lucro]),
    "Desconto", AVERAGE('base_vendas'[Desconto])
)

```
---



 **Benefícios**

Redução no número de páginas do relatório

Melhor experiência para o usuário final

Facilita a narrativa e o storytelling



---

🧭 **Conclusão**

Os parâmetros transformam o Power BI de uma ferramenta estática em um ambiente de exploração guiada, permitindo análises dinâmicas e inteligentes sem complexidade adicional.

