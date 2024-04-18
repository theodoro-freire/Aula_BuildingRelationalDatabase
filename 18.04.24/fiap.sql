        CREATE SEQUENCE SEQ_MARCA;
        CREATE SEQUENCE SEQ_MODELO;
        -- NEXTVA: PROXIMO VALOR
        -- CURRVAL: VALOR ATUAL
        
        
        -- DEFAULT é a definição de um valor padrão a ser inserido - cas onao seja mencionado no insert
        CREATE TABLE MARCA(
        id_marca int DEFAULT SEQ_MARCA.nextval primary key,
        ds_marca varchar(100) not null);
        
        select * from marca;
        
        CREATE TABLE MODELO (
            id_modelo int DEFAULT SEQ_MODELO.nextval primary key,
            ds_modelo varchar(100) not null,
            cor varchar(30),
            ano date,
            cambio varchar(10),
            categora varchar(10),
            id_marca int REFERENCES MARCA(id_marca)
        );
        
        drop table modelo;
    
        
        INSERT INTO MARCA(ds_marca) VALUES ('FIAT');
        INSERT INTO MARCA(ds_marca) VALUES ('FORD');
        INSERT INTO MARCA(ds_marca) VALUES ('JEEP');
         
        INSERT INTO MODELO(ds_modelo, cor, ano, cambio, categoria, id_marca) VALUES('UNO','VERDE',to_date('2010','YYYY'), 'MANUAL', 'HATCH',1);
        INSERT INTO MODELO(ds_modelo, cor, ano, cambio, categoria, id_marca) VALUES('SIENA','VERMELHO',to_date('2015','YYYY'), 'MANUAL', 'SEDAN',1);
        INSERT INTO MODELO(ds_modelo, cor, ano, cambio, categoria, id_marca) VALUES('KA','PRETO',to_date('2018','YYYY'), 'MANUAL', 'HATCH',2);
        INSERT INTO MODELO(ds_modelo, cor, ano, cambio, categoria, id_marca) VALUES('ECOSPORT','CINZA',to_date('2024','YYYY'), 'AUT', 'SUV',2);
        INSERT INTO MODELO(ds_modelo, cor, ano, cambio, categoria, id_marca) VALUES('UNO','VERDE',to_date('2010','YYYY'), 'MANUAL', 'HATCH',1);
        
        UPDATE MODELO SET id_marca= 4 WHERE id_modelo=5 or id_modelo=6;
        
        -- alias (ou apelido)
        SELECT * FROM MARCA ma, MODELO md WHERE ma.id_marca = md.id_marca;