
CREATE TABLE T_SPV_CLASSIFICACAO_FISCAL 
    ( 
     cd_classificacao_fiscal DECIMAL (4)  NOT NULL , 
     nr_cfop DECIMAL (5)  NOT NULL , 
     ds_natureza_operacao VARCHAR (30)  NOT NULL 
    ) 
;



ALTER TABLE T_SPV_CLASSIFICACAO_FISCAL 
    ADD CONSTRAINT PK_SPV_CLASSIF_FISCAL PRIMARY KEY ( cd_classificacao_fiscal ) ;



CREATE TABLE T_SPV_CLIENTE 
    ( 
     cd_cliente DECIMAL (5)  NOT NULL , 
     nm_cliente VARCHAR (60)  NOT NULL , 
     dt_nascimento DATE , 
     ds_sexo CHAR (1)  NOT NULL , 
     nr_cpf DECIMAL (11)  NOT NULL , 
     nr_rg CHAR (10)  NOT NULL , 
     ds_email VARCHAR (80) 
    ) 
;



ALTER TABLE T_SPV_CLIENTE 
    ADD CONSTRAINT PK_SPV_CLIENTE PRIMARY KEY ( cd_cliente ) ;



CREATE TABLE T_SPV_ITEM_NOTA_FISCAL 
    ( 
     nr_nota_fiscal DECIMAL (6)  NOT NULL , 
     cd_item DECIMAL (3)  NOT NULL , 
     cd_produto DECIMAL (6)  NOT NULL , 
     qt_vendida DECIMAL (3)  NOT NULL , 
     vl_preco_unitario DECIMAL (6,2)  NOT NULL 
    ) 
;



ALTER TABLE T_SPV_ITEM_NOTA_FISCAL 
    ADD CONSTRAINT PK_SPV_ITEM_NF PRIMARY KEY ( cd_item, nr_nota_fiscal ) ;



CREATE TABLE T_SPV_NOTA_FISCAL 
    ( 
     nr_nota_fiscal DECIMAL (6)  NOT NULL , 
     cd_classificacao_fiscal DECIMAL (4)  NOT NULL , 
     cd_cliente DECIMAL (5)  NOT NULL , 
     dt_emissao DATE  NOT NULL , 
     vl_total_nf DECIMAL (8,2)  NOT NULL , 
     ds_tipo DECIMAL (1)  NOT NULL , 
     vl_desconto DECIMAL (3,1) 
    ) 
;



ALTER TABLE T_SPV_NOTA_FISCAL 
    ADD CONSTRAINT PK_SPV_NOTA_FISCAL PRIMARY KEY ( nr_nota_fiscal ) ;



CREATE TABLE T_SPV_PRODUTO 
    ( 
     cd_produto DECIMAL (6)  NOT NULL , 
     cd_unidade_medida DECIMAL (2)  NOT NULL , 
     ds_produto VARCHAR (20)  NOT NULL , 
     ds_completa_produto VARCHAR (128)  NOT NULL , 
     qt_estoque DECIMAL (4)  NOT NULL , 
     vl_preco_unitario DECIMAL (6,2)  NOT NULL 
    ) 
;



ALTER TABLE T_SPV_PRODUTO 
    ADD CONSTRAINT PK_SPV_PRODUTO PRIMARY KEY ( cd_produto ) ;



CREATE TABLE T_SPV_UNIDADE_MEDIDA 
    ( 
     cd_unidade_medida DECIMAL (2)  NOT NULL , 
     ds_sigla CHAR (3)  NOT NULL , 
     ds_unidade_medida VARCHAR (30)  NOT NULL 
    ) 
;



ALTER TABLE T_SPV_UNIDADE_MEDIDA 
    ADD CONSTRAINT PK_SPV_UNID_MEDIDA PRIMARY KEY ( cd_unidade_medida ) ;




ALTER TABLE T_SPV_NOTA_FISCAL 
    ADD CONSTRAINT FK_SPV_CLASSIF_NF FOREIGN KEY 
    ( 
     cd_classificacao_fiscal
    ) 
    REFERENCES T_SPV_CLASSIFICACAO_FISCAL 
    ( 
     cd_classificacao_fiscal
    ) 
;


ALTER TABLE T_SPV_ITEM_NOTA_FISCAL 
    ADD CONSTRAINT FK_SPV_ITEMNF_NF FOREIGN KEY 
    ( 
     nr_nota_fiscal
    ) 
    REFERENCES T_SPV_NOTA_FISCAL 
    ( 
     nr_nota_fiscal
    ) 
;


ALTER TABLE T_SPV_ITEM_NOTA_FISCAL 
    ADD CONSTRAINT FK_SPV_PRODUTO_NF FOREIGN KEY 
    ( 
     cd_produto
    ) 
    REFERENCES T_SPV_PRODUTO 
    ( 
     cd_produto
    ) 
;


ALTER TABLE T_SPV_PRODUTO 
    ADD CONSTRAINT FK_SPV_PRODUTO_UNID FOREIGN KEY 
    ( 
     cd_unidade_medida
    ) 
    REFERENCES T_SPV_UNIDADE_MEDIDA 
    ( 
     cd_unidade_medida
    ) 
;


ALTER TABLE T_SPV_NOTA_FISCAL 
    ADD CONSTRAINT FK_SPV_CLI_NF FOREIGN KEY 
    ( 
     cd_cliente
    ) 
    REFERENCES T_SPV_CLIENTE 
    ( 
     cd_cliente
    ) 
;


