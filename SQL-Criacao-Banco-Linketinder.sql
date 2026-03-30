CREATE TABLE candidatos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(150) NOT NULL UNIQUE,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    pais VARCHAR(50),
    cep VARCHAR(8),
    descricao_pessoal TEXT,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE competencias (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100)
);

CREATE TABLE competencias_candidatos (
	id_candidato INT,
    id_competencia INT,

    FOREIGN KEY (id_candidato) REFERENCES candidatos(id),
    FOREIGN KEY (id_competencia) REFERENCES competencias(id)
);

CREATE TABLE empresas(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	cnpj VARCHAR(14) NOT NULL,
	email VARCHAR(150) NOT NULL,
	descricao_empresa VARCHAR(1000) NOT NULL,
	pais VARCHAR(50),
	cep VARCHAR(8),
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE vagas(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	descricao VARCHAR(500) NOT NULL,
	competencias VARCHAR(500) NOT NULL,
	local VARCHAR(50) NOT NULL,
	id_empresa INT,

	FOREIGN KEY(id_empresa) REFERENCES empresas(id)
);