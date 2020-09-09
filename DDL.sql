create schema produtora;

use produtora;

create user 'user'@'localhost' identified by 'pass123';

grant select, insert, delete, update on produtora.* to user@'localhost';


create table usr_usuario(
    usr_id bigint unsigned primary key auto_increment,
    usr_login varchar(50),
    usr_senha varchar(50),
    usr_auth varchar(1),
    constraint use_login_uk unique (usr_login)
);

create table pes_pessoa(
	pes_id bigint unsigned primary key auto_increment,
    pes_nome varchar(50),
    pes_cpf bigint,
    tipo varchar(1),
    atr_fama varchar(50),
    dub_especialidade varchar(50),
    constraint pes_cpf_uk unique (pes_cpf)
);

create table fmg_filmagem (
	fmg_id bigint unsigned primary key auto_increment,
    fmg_nome varchar(50) not null,
    fmg_ano date not null,
    fmg_duracao float not null,
    diretor bigint unsigned,
    constraint fmg_pes_fk foreign key (diretor)
		references pes_pessoa(pes_id)
);

create table nov_novela (
	fmg_id bigint unsigned,
    nov_capitulo bigint not null,
    nov_desc_cap varchar(100) not null,
    constraint nov_fmg_fk foreign key (fmg_id)
		references fmg_filmagem(fmg_id)
);

create table flm_filme (
	fmg_id bigint unsigned,
    flm_descricao varchar(100) not null,
    constraint flm_fmg_fk foreign key (fmg_id)
		references fmg_filmagem(fmg_id)
);

create table atu_atuacao (
	pes_id bigint unsigned,
    fmg_id bigint unsigned,
    constraint atu_pk primary key(pes_id, fmg_id),
    constraint atu_fmg_fk foreign key (fmg_id)
		references fmg_filmagem(fmg_id),
	constraint atu_pes_fk foreign key (pes_id)
		references pes_pessoa(pes_id)
);

    INSERT INTO usr_usuario (usr_login, usr_senha,usr_auth) VALUES ("admin","123","A"), ("jonathan","123","U"), ("lucas","123","U"), ("hercules","123","A"), ("victor","123","U");

    INSERT INTO pes_pessoa (pes_nome,pes_cpf,tipo) VALUES ("Luke Winters","92427130099","T"), ("Hop Bowman","29949872899","T"), ("Preston Bailey","18252066499","T"), ("Connor Hays","53538461799","T"), ("Damian George","27870155399","T");

    INSERT INTO pes_pessoa (pes_nome,pes_cpf,tipo,atr_fama) VALUES ("Owen Simpson","16725546299","A","Musica"), ("Cairo Head","45516724899","A","Musica"), ("Tyler Briggs","38314493399","A","Musica"), ("Clark Knox","47725317999","A","Musica"), ("Aladdin Irwin","48361232399","A","Musica");
    INSERT INTO pes_pessoa (pes_nome,pes_cpf,tipo,atr_fama) VALUES ("Abdul Mccray","39774555799","A","Teatro"), ("Kareem Hyde","74229628099","A","Teatro"), ("Beck Berg","43302315599","A","Teatro"), ("Erich Waters","68470720599","A","Teatro"), ("Christopher Stark","42446110799","A","Teatro");
    INSERT INTO pes_pessoa (pes_nome,pes_cpf,tipo,atr_fama) VALUES ("Quinlan Levine","27774908199","A","Dança"), ("Knox Ayala","92563485999","A","Dança"), ("Quentin French","37725918799","A","Dança"), ("Ashton Mcgee","34583196199","A","Dança"), ("Wallace Nelson","33544063799","A","Dança");

    INSERT INTO pes_pessoa (pes_nome,pes_cpf,tipo,dub_especialidade) VALUES ("Kennan Black","84854941099","D","Defesa Pessoal"), ("Joel Camacho","20545039799","D","Defesa Pessoal"), ("Louis Mccray","51455458499","D","Defesa Pessoal"), ("Kenneth Wolfe","75319907999","D","Defesa Pessoal"), ("Hakeem Sweet","71786288799","D","Defesa Pessoal");
    INSERT INTO pes_pessoa (pes_nome,pes_cpf,tipo,dub_especialidade) VALUES ("Cameron Stanley","21494235199","D","Direção Automobilistica"),("Stewart Smith","90575932699","D","Direção Automobilistica"), ("Malik Ball","11657387299","D","Direção Automobilistica"), ("Joshua Wood","20491969599","D","Direção Automobilistica"), ("Damon Gallagher","02752005499","D","Direção Automobilistica");
    INSERT INTO pes_pessoa (pes_nome,pes_cpf,tipo,dub_especialidade) VALUES ("Neville Keller","56244884899","D","Defesa Pessoal"), ("Clarke Stark","27820267199","D","Defesa Pessoal"), ("Kennedy Franco","33832283899","D","Defesa Pessoal"), ("Flynn May","93250208199","D","Defesa Pessoal"), ("Omar Gutierrez","00645656299","D","Defesa Pessoal");


    INSERT INTO fmg_filmagem (fmg_nome,fmg_ano,fmg_duracao,diretor) VALUES ("augue ut lacus. Nulla","1919-10-09",4,1),("tortor. Integer aliquam adipiscing","2121-02-22",4,1),("Aenean egestas hendrerit neque.","2121-02-06",4,1),("dignissim lacus. Aliquam rutrum","2121-07-08",3,1),("felis ullamcorper viverra. Maecenas","2020-07-12",3,1),("vitae, orci. Phasellus dapibus","1919-09-23",4,1);
    INSERT INTO fmg_filmagem (fmg_nome,fmg_ano,fmg_duracao,diretor) VALUES ("Nullam scelerisque neque sed","2121-02-25",3,2),("sem eget massa. Suspendisse","2020-02-04",4,2),("auctor vitae, aliquet nec,","2020-05-12",3,2),("fringilla euismod enim. Etiam","2020-01-06",4,2),("ultrices a, auctor non,","1919-10-21",4,2);
    INSERT INTO fmg_filmagem (fmg_nome,fmg_ano,fmg_duracao,diretor) VALUES ("ac risus. Morbi metus.","2020-08-06",3,3),("vel est tempor bibendum.","2020-04-09",4,3),("egestas hendrerit neque. In","2121-06-14",4,3),("at fringilla purus mauris","2020-10-05",4,3),("semper rutrum. Fusce dolor","1919-10-01",2,3),("dictum placerat, augue. Sed","2020-03-21",4,3),("Quisque imperdiet, erat nonummy","1919-10-21",4,3),("neque. Morbi quis urna.","2121-05-24",4,3),("dui, nec tempus mauris","2020-02-26",3,3),("in aliquet lobortis, nisi","2020-12-22",3,3);
    INSERT INTO fmg_filmagem (fmg_nome,fmg_ano,fmg_duracao,diretor) VALUES ("id, erat. Etiam vestibulum","2020-05-11",2,4),("Nulla tempor augue ac","2121-04-02",3,4),("ultrices posuere cubilia Curae;","2121-05-13",4,4),("Suspendisse sed dolor. Fusce","2020-11-11",3,4),("enim, condimentum eget, volutpat","2121-01-31",4,4),("ante ipsum primis in","1919-10-17",2,4),("Vestibulum ut eros non","2020-11-22",3,4);
    INSERT INTO fmg_filmagem (fmg_nome,fmg_ano,fmg_duracao,diretor) VALUES ("at, nisi. Cum sociis","2121-09-05",4,5),("fermentum convallis ligula. Donec","2121-04-14",4,5),("ac mattis velit justo","2020-05-31",3,5),("a, magna. Lorem ipsum","1919-12-11",4,5);


    INSERT INTO nov_novela (fmg_id,nov_capitulo,nov_desc_cap) VALUES (1,11,"Lorem ipsum"),(2,12,"Lorem"),(3,9,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed"),(4,12,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed"),(5,10,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed"),(6,13,"Lorem ipsum dolor sit"),(7,15,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur"),(8,6,"Lorem"),(9,11,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit."),(10,10,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed"),(11,3,"Lorem ipsum"),(12,4,"Lorem ipsum"),(13,5,"Lorem ipsum dolor sit"),(14,6,"Lorem ipsum"),(15,10,"Lorem ipsum"),(16,3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur"),(17,9,"Lorem"),(18,5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur"),(19,4,"Lorem"),(20,11,"Lorem");


    INSERT INTO flm_filme (fmg_id,flm_descricao) VALUES (21,"ac mattis velit justo nec ante."),(22,"arcu."),(23,"magna. Cras convallis"),(24,"dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis"),(25,"erat nonummy ultricies ornare, elit elit fermentum risus,"),(26,"amet ornare lectus justo eu arcu. Morbi sit amet"),(27,"odio vel est tempor bibendum. Donec"),(28,"enim. Sed nulla ante, iaculis nec, eleifend"),(29,"urna. Ut tincidunt vehicula risus. Nulla eget"),(30,"consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan"),(31,"semper. Nam tempor"),(32,"sem. Nulla"),(33,"dui lectus rutrum urna, nec luctus"),(34,"sed, facilisis vitae, orci. Phasellus dapibus quam quis diam."),(35,"egestas. Fusce aliquet magna a neque. Nullam ut nisi a"),(36,"ipsum"),(37,"auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi"),(38,"est. Nunc"),(39,"arcu. Curabitur ut odio vel est"),(40,"odio, auctor vitae, aliquet nec, imperdiet nec,");
    INSERT INTO flm_filme (fmg_id,flm_descricao) VALUES (41,"Curabitur vel lectus. Cum sociis"),(42,"sit amet"),(43,"vehicula aliquet libero. Integer"),(44,"auctor non, feugiat nec, diam. Duis mi enim,"),(45,"a neque. Nullam ut nisi a odio semper cursus. Integer"),(46,"lorem tristique aliquet."),(47,"est ac facilisis facilisis, magna tellus faucibus"),(48,"semper et, lacinia vitae, sodales at, velit. Pellentesque"),(49,"Phasellus fermentum convallis ligula. Donec"),(50,"tempor, est ac mattis semper, dui lectus rutrum urna,"),(51,"Integer"),(52,"sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et"),(53,"sed pede. Cum sociis natoque penatibus et magnis"),(54,"tincidunt. Donec"),(55,"arcu. Sed et"),(56,"in faucibus orci luctus et ultrices"),(57,"aliquet. Phasellus fermentum convallis ligula. Donec"),(58,"neque."),(59,"Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat"),(60,"pharetra, felis eget varius ultrices, mauris ipsum porta elit, a");
