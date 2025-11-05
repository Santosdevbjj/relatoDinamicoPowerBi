---

## 📁 `scripts/modelagem_dados.m`
```m
// MODELAGEM DE DADOS POWER BI — MODELO ESTRELA
// Autor: Sérgio Santos
// Descrição: Estrutura de relações entre as tabelas do modelo de dados.

let
    FatoVendas = Table.FromRecords({
        [IDVenda=1, IDProduto=101, IDCliente=1001, IDRegiao=1, Receita=1200.00, Custo=800.00, DataVenda=#date(2024,5,12)],
        [IDVenda=2, IDProduto=102, IDCliente=1002, IDRegiao=2, Receita=900.00, Custo=600.00, DataVenda=#date(2024,6,10)]
    }),

    DimProdutos = Table.FromRecords({
        [IDProduto=101, Produto="Notebook Pro X", Categoria="Eletrônicos"],
        [IDProduto=102, Produto="Smartphone Y", Categoria="Telefonia"]
    }),

    DimClientes = Table.FromRecords({
        [IDCliente=1001, Cliente="Maria Oliveira", Segmento="Pessoa Física"],
        [IDCliente=1002, Cliente="Empresa ABC", Segmento="Pessoa Jurídica"]
    }),

    DimRegioes = Table.FromRecords({
        [IDRegiao=1, Regiao="Sudeste"],
        [IDRegiao=2, Regiao="Sul"]
    }),

    // RELAÇÕES (simuladas)
    ModeloEstrela = [
        FatoVendas = FatoVendas,
        DimProdutos = DimProdutos,
        DimClientes = DimClientes,
        DimRegioes = DimRegioes
    ]
in
    ModeloEstrela
