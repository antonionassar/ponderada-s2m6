-- Tabela Paciente
CREATE TABLE Paciente (
    ID_Paciente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(255),
    Telefone VARCHAR(20)
);

-- Tabela Transporte
CREATE TABLE Transporte (
    ID_Transporte INT AUTO_INCREMENT PRIMARY KEY,
    Tipo_Veiculo VARCHAR(50),
    Capacidade INT,
    Status VARCHAR(50)
);

-- Tabela Viagem
CREATE TABLE Viagem (
    ID_Viagem INT AUTO_INCREMENT PRIMARY KEY,
    Data DATE,
    ID_Paciente INT,
    ID_Transporte INT,
    Destino VARCHAR(100),
    FOREIGN KEY (ID_Paciente) REFERENCES Paciente(ID_Paciente),
    FOREIGN KEY (ID_Transporte) REFERENCES Transporte(ID_Transporte)
);

-- Tabela Produto Médico
CREATE TABLE ProdutoMedico (
    ID_Produto INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Tipo VARCHAR(50),
    Data_Validade DATE
);

-- Tabela Estoque
CREATE TABLE Estoque (
    ID_Estoque INT AUTO_INCREMENT PRIMARY KEY,
    ID_Produto INT,
    Quantidade INT,
    Localizacao VARCHAR(100),
    FOREIGN KEY (ID_Produto) REFERENCES ProdutoMedico(ID_Produto)
);

-- Tabela Entrega
CREATE TABLE Entrega (
    ID_Entrega INT AUTO_INCREMENT PRIMARY KEY,
    ID_Transporte INT,
    ID_Estoque INT,
    Data_Entrega DATE,
    FOREIGN KEY (ID_Transporte) REFERENCES Transporte(ID_Transporte),
    FOREIGN KEY (ID_Estoque) REFERENCES Estoque(ID_Estoque)
);
