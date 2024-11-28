CREATE DATABASE loja;

CREATE TABLE produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    data_validade DATE,
    categoria_id BIGINT,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO categorias (nome, descricao) VALUES 
('Carnes Bovinas', 'Cortes variados de carne bovina'),
('Aves', 'Produtos de frango e outros tipos de aves'),
('Suínos', 'Cortes e produtos de carne suína');

INSERT INTO produtos (nome, descricao, preco, estoque, data_validade, categoria_id) VALUES 
('Picanha', 'Picanha bovina fresca', 89.99, 50, '2025-12-31', 1),
('Frango Inteiro', 'Frango congelado de alta qualidade', 25.50, 100, '2024-06-30', 2),
('Costelinha Suína', 'Costelinha pronta para churrasco', 39.99, 30, '2024-08-15', 3);

