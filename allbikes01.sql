CREATE DATABASE if not exists allbikes01;

USE allbikes01;

CREATE TABLE IF NOT EXISTS Produtos(
id INT,
nome VARCHAR(50),
descricao VARCHAR(150),
preco DECIMAL(8,2),
imagem VARCHAR(50)
);

INSERT INTO Produtos VALUES (1, 'Bicicleta' , 'Trek - Aro 16 - Cor laranja', 1799.99, '/img/Produto_01.webp');
INSERT INTO Produtos VALUES (2, 'Bicicleta' , 'Dropp Z3 - Aro 29 - Com 21 marchas', 1799.99, '/img/Produto_02.jpg');
INSERT INTO Produtos VALUES (3, 'Bicicleta' , 'Feel - Aro 26 - Com 21 marchars', 999.99, '/img/Produto_03.jpg');
INSERT INTO Produtos VALUES (4, 'Bicicleta' , 'Groove - Aro 29 - Com 21 marchas', 2399.99, '/img/Produto_04.jpg');
INSERT INTO Produtos VALUES (5, 'Bicicleta' , 'Ksw - Aro 29 - Com 24 marchas', 1722.00, '/img/Produto_05.jpg');
INSERT INTO Produtos VALUES (6, 'Bicicleta' , 'Woltz - Aro 29 - Com 21 marchas', 949.99, '/img/Produto_06.jpg');
INSERT INTO Produtos VALUES (7, 'Bicicleta' , 'Power - Aro 26 - Com 18 marchas', 459.00, '/img/Produto_07.webp');
INSERT INTO Produtos VALUES (8, 'Bicicleta' , 'Caloi Strada 2017 - SPEED - Com 16 marchas', 2799.00, '/img/Produto_08.webp');
INSERT INTO Produtos VALUES (9, 'Bicicleta' , 'Caloi TR-10s - SPEED - Com 16 marchas', 3800.90, '/img/Produto_09.webp');
INSERT INTO Produtos VALUES (10, 'Capacete' , 'tipo:passeio - Tamanho P a G', 199.90, '/img/Produto_10.jpg');
INSERT INTO Produtos VALUES (11, 'Capacete' , 'tipo:ciclismo - Tamanho P a G', 259.90, '/img/Produto_11.webp');
INSERT INTO Produtos VALUES (12, 'Luz' , 'Frontal + Cronômetro (resistente à agua)', 199.00, '/img/Produto_12.jpg');
INSERT INTO Produtos VALUES (13, 'Luz' , 'traseira de LED', 49.99, '/img/Produto_13 - dar erro.webp');
INSERT INTO Produtos VALUES (14, 'Buzina' , 'WG', 21.90, '/img/Produto_14.jpg');
INSERT INTO Produtos VALUES (15, 'Buzina' , 'Ar bike', 39.99, '/img/Produto_15.webp');
INSERT INTO Produtos VALUES (16, 'Teste' , 'Teste', 39.99, '/img/Produto_15.webp');

UPDATE Produtos SET imagem="Produto_01.webp" where id=1;
SELECT * FROM Produtos;

DELETE FROM Produtos;

CREATE TABLE IF NOT EXISTS Pedidos(
id INT,
Cliente VARCHAR(50),
Endereco VARCHAR(300),
telefone VARCHAR(20),
produto VARCHAR(50),
valor DECIMAL(10,2),
Quantidade INT,
TOTAL DECIMAL (11,2)
);

INSERT INTO Pedidos VALUES (1, 'Abelardo Batista Costa' , 'Rua Américo Bernardo, 10', '(11) 9.9876-5432', 'Capacete', 259.90, 1, 259.90);
INSERT INTO Pedidos VALUES (2, 'Danielo Edward Fonseca' , 'Rua Costa Damião, 20', '(11) 9.9987-6543', 'Buzina', 39.99, 2, 79.98);
INSERT INTO Pedidos VALUES (3, 'Gabriela Hector Iniz' , 'Rua Emily Ferdinand, 30', '(11) 9.9998-7654', 'Luz', 49.99, 3, 149.97);
INSERT INTO Pedidos VALUES (4, '-Excluir pedido-' , 'Rua desconhecida', '(99) 9.9998-7654', 'Nenhum', 0, 0, 0);

DELETE FROM Pedidos WHERE id = 4;

SELECT * FROM Pedidos;
SELECT * FROM Produtos;