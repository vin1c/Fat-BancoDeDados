USE DB_03358B_MarcosVinicius;

CREATE TABLE IF NOT EXISTS AV01_Produtos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Preco DECIMAL(10,2),
    Estoque INT
);

INSERT INTO AV01_Produtos (Nome, Preco, Estoque) VALUES ('Caderno Universitário', 25.90, 50);
INSERT INTO AV01_Produtos (Nome, Preco, Estoque) VALUES ('Lápis Preto', 2.50, 100);
INSERT INTO AV01_Produtos (Nome, Preco, Estoque) VALUES ('Caneta Azul', 3.20, 80);
INSERT INTO AV01_Produtos (Nome, Preco, Estoque) VALUES('Borracha', 1.50, 60);
INSERT INTO AV01_Produtos (Nome, Preco, Estoque) VALUES('Mochila Escolar', 120.00, 30);

SELECT * FROM AV01_Produtos;


CREATE TABLE IF NOT EXISTS AV01_Vendas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ProdutoID INT,
    Quantidade INT,
    ValorTotal DECIMAL(10,2),
    DataVenda DATE
    );
    
    INSERT INTO AV01_Vendas (ProdutoID, Quantidade, ValorTotal, DataVenda) VALUES (1, 2, 51.80, '2025-10-06');
	INSERT INTO AV01_Vendas (ProdutoID, Quantidade, ValorTotal, DataVenda) VALUES (2, 5, 12.50, '2025-10-06');
    INSERT INTO AV01_Vendas (ProdutoID, Quantidade, ValorTotal, DataVenda) VALUES (3, 3, 9.60, '2025-10-06');
    INSERT INTO AV01_Vendas (ProdutoID, Quantidade, ValorTotal, DataVenda) VALUES (3, 3, 9.60, '2025-10-06');
    INSERT INTO AV01_Vendas (ProdutoID, Quantidade, ValorTotal, DataVenda) VALUES (5, 1, 120.00, '2025-10-06');
    
    SELECT * FROM AV01_Vendas;
    
    CREATE TABLE IF NOT EXISTS AV01_Fornecedores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    Cidade VARCHAR(50)
); 

INSERT INTO AV01_Fornecedores (Nome, Telefone, Email, Cidade) VALUES ('Papelaria Central', '(11) 98888-1234', 'contato@papelariacentral.com', 'São Paulo');
INSERT INTO AV01_Fornecedores (Nome, Telefone, Email, Cidade) VALUES ('Distribuidora Escolar', '(11) 97777-5678', 'vendas@distribuidoraescolar.com', 'Guarulhos');
INSERT INTO AV01_Fornecedores (Nome, Telefone, Email, Cidade) VALUES ('Mundo das Canetas', '(11) 96666-3456', 'suporte@mundodascanetas.com', 'Osasco');
INSERT INTO AV01_Fornecedores (Nome, Telefone, Email, Cidade) VALUES ('Top Materiais', '(11) 95555-7890', 'atendimento@topmateriais.com', 'Santo André');
INSERT INTO AV01_Fornecedores (Nome, Telefone, Email, Cidade) VALUES ('Mega Fornecedora', '(11) 94444-2222', 'contato@megafornecedora.com', 'São Bernardo do Campo');

SELECT * FROM AV01_Fornecedores;

