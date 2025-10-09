USE DB_03358B_MarcosVinicius;

CREATE TABLE IF NOT EXISTS E08_Produtos(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Preco DECIMAL(8,2)
);

CREATE TABLE IF NOT EXISTS E08_Vendas(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Id_Produto INT,
    Quantidade INT,
    DataDaVenda DATE,
    FOREIGN KEY (Id_Produto) REFERENCES E08_Produtos(ID)
    -- FOREIGN KEY (ColunaDestaTabela) REFERENCES OutraTabela(ChavePrimaria)
);

CREATE TABLE IF NOT EXISTS E08_Fornecedores(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Telefone VARCHAR(20)
);

INSERT INTO E08_Produtos(Nome, Preco)
VALUES ('Pão Francês', 0.85),
('Bolo de Fubá', 4.00),
('Bolo de Chocolate', 5.50),
('Rosquinha', 6.00);

INSERT INTO E08_Vendas(Id_Produto, Quantidade, DataDaVenda)
VALUES (2, 1, '2025-06-03'),
(3, 2, '2025-10-08'),
(1, 5, '2025-10-07'),
(4, 8, '2025-08-29'),
(2, 3, '2025-09-12');

INSERT INTO E08_Fornecedores(Nome, Telefone)
VALUES ('Cleiton', 1234566789);

#Listar todos os produtos
SELECT * FROM E08_Produtos;

#Listar todas as vendas de bolo de fubá
SELECT * FROM E08_Vendas WHERE Id_Produto = 2;

#Listar todas as vendas de bolo de chocolate
SELECT * FROM E08_Vendas WHERE Id_Produto = 3;

#Listas vendas que ocorreram no dia 2025-06-03
SELECT * FROM E08_Vendas WHERE DataDaVenda = '2025-06-03';

