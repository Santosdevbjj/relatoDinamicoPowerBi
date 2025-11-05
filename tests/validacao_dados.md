# 🔍 VALIDAÇÃO DE DADOS — POWER BI PROJECT

## 1️⃣ Verificação de Integridade
| Teste | Descrição | Resultado |
|--------|------------|-----------|
| Chaves Primárias | Sem duplicidades em FatoVendas | ✅ |
| Chaves Estrangeiras | IDs válidos para Produtos, Clientes e Regiões | ✅ |
| Nulos | Nenhum valor nulo em colunas críticas | ✅ |

## 2️⃣ Verificação de Consistência
- [x] Lucro = Receita - Custo  
- [x] Margem calculada corretamente  
- [x] Datas coerentes (sem vendas futuras)  
- [x] Regiões compatíveis com base cadastral  

## 3️⃣ Conformidade com Layout Esperado
- [x] Tabelas e colunas nomeadas segundo padrão de dicionário de dados  
- [x] Tipos de dados numéricos corretos  
- [x] Datas reconhecidas como tipo DateTime  

## 4️⃣ Teste de Volume
- [x] Contagem de registros após transformação = total original - exclusões justificadas  
- [x] Nenhum registro duplicado  

## 5️⃣ Logs de Verificação
- [x] Execução registrada em `/tests/relatorio_execucao.md`
