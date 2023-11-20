-- Inserção dos dados na tabela Paciente
INSERT INTO Paciente (Nome, Endereco, Telefone) VALUES ('Ricardo Nunes', 'Rua A, 123', '1111-2222');
INSERT INTO Paciente (Nome, Endereco, Telefone) VALUES ('Fernanda Silva', 'Rua B, 456', '3333-4444');

-- Inserção dos dados na tabela Transporte
INSERT INTO Transporte (Tipo_Veiculo, Capacidade, Status) VALUES ('Ambulância', 4, 'Disponível');
INSERT INTO Transporte (Tipo_Veiculo, Capacidade, Status) VALUES ('Van', 6, 'Disponível');

-- Inserção de dados na tabela Viagem
INSERT INTO Viagem (Data, ID_Paciente, ID_Transporte, Destino) VALUES ('2023-11-01', 1, 1, 'Hospital A');
INSERT INTO Viagem (Data, ID_Paciente, ID_Transporte, Destino) VALUES ('2023-11-02', 2, 2, 'Hospital B');

