drop table t_estudante;

drop table t_documento;

create table t_estudante (
    rm int primary key,
    nome varchar(100) constraint nn_nome not null,
    dt_nascimento date,
    sx_biologico char(1) -- F, M, I
);

create table t_documento(
    id_doc int,
    rg varchar(15) constraint uk_rg unique,
    cpf varchar(15),
    rm_fk int references t_estudante(rm),
    constraint uk_cpf unique(cpf),
    primary key (id_doc),
    unique (rm_fk)
);

create table t_disciplina(
    id_disci int primary key,
    nm_disci varchar(50)
);

create table t_notas(
    id_nota int primary key,
    cp1 number,
    cp2 number,
    cp3 number,
    id_disci_fk int references t_disciplina(id_disci),
    rm_fk int references t_estudante(rm)
);


