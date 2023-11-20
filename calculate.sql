SELECT 
    ID_Transporte, 
    YEAR(Data) AS Ano, 
    MONTH(Data) AS Mes, 
    COUNT(DISTINCT ID_Paciente) / COUNT(DISTINCT ID_Viagem) AS Media_Pacientes_Por_Viagem
FROM Viagem
GROUP BY ID_Transporte, YEAR(Data), MONTH(Data);
