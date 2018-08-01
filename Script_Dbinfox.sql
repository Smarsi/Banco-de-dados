create database dbinfox;
use dbinfox;
show tables;
create table tb_clientes(
idcli int auto_increment primary key,
cpfcli varchar(15) not null,
nomecli varchar(50) not null,
cep varchar(50) not null,
tipo  varchar(100) not null,
complemento varchar (50), 
bairro varchar (50) not null,
cidade varchar (50) not null,
uf char (2) not null,
fone1 varchar (50) not null,
fone2 varchar (50),
emailcli varchar (50) not null
);

create table tb_os(
idos int auto_increment primary key,
dataos timestamp default current_timestamp,
tipo varchar(15) not null,
situacao varchar(20) not null,
equipamento varchar(200) not null,
defeito varchar(200) not null,
servico varchar(200),
tecnico varchar(200),
valor decimal (10,2),
idcli int not null
);

select * from tb_clientes;

delete from tb_clientes where idcli =10005 ;

alter table tb_os auto_increment = 10000;

alter table tb_os add constraint cliente_os
foreign key(idcli)
references tb_clientes(idcli)
on delete no action;


describe tb_clientes;


describe tb_clientes;

insert into tb_clientes
values (null, '456982314','Marilene','01100110','rua','casa','parque jorge','Santo André','SP','01110001000)',null,'marilene@gmail.com');
select * from tb_clientes;

insert into tb_clientes
values (null, '698752135','Gleison','02200220','Avenida','Apartamento 23','Santana','São Paulo','SP','01120002000','01121212121','gleisonsantos@outlook.com');

insert into tb_clientes
values (null, '6471658','anselmo borboleta','03300330','rua',null,'Santa Efigenea','São Paulo','SP','01130003000','01131313131','borboleta@hotmail.com');

insert into tb_os
values (null, null, 'orçamento', 'quebrado', 'notbook asus', 'desligando sozinho', 'troca de fonte', 'diogo', '150'); 

insert into tb_os
values (null, null, 'serviço', 'quebrado', 'pc intell', null, 'instalação de memória', 'richard', '60');

insert into tb_os
values (null, null, 'manutenção', 'quebrado', 'notbook lenovo', 'não liga', 'manutenção', 'richard', '100');








