use produtora;

    INSERT INTO pes_pessoa (pes_nome,pes_cpf,tipo,atr_fama) VALUES ("Owen Simpson","16725546299","A","Musica"), 
                                                                   ("Cairo Head","45516724899","A","Musica"),
                                                                   ("Tyler Briggs","38314493399","A","Musica"),
                                                                   ("Clark Knox","47725317999","A","Musica"),
                                                                   ("Aladdin Irwin","48361232399","A","Musica"),
                                                                   ("Abdul Mccray","39774555799","A","Teatro"),
                                                                   ("Kareem Hyde","74229628099","A","Teatro"),
                                                                   ("Beck Berg","43302315599","A","Teatro"),
                                                                   ("Erich Waters","68470720599","A","Teatro"),
                                                                   ("Christopher Stark","42446110799","A","Teatro"),
                                                                   ("Quinlan Levine","27774908199","A","Dança"),
                                                                   ("Knox Ayala","92563485999","A","Dança"),
                                                                   ("Quentin French","37725918799","A","Dança"),
                                                                   ("Ashton Mcgee","34583196199","A","Dança"),
                                                                   ("Wallace Nelson","33544063799","A","Dança");
    INSERT INTO pes_pessoa (pes_nome,pes_cpf,tipo,dub_especialidade) VALUES ("Kennan Black","84854941099","D","Defesa Pessoal"),
                                                                            ("Joel Camacho","20545039799","D","Defesa Pessoal"),
                                                                            ("Louis Mccray","51455458499","D","Defesa Pessoal"),
                                                                            ("Kenneth Wolfe","75319907999","D","Defesa Pessoal"),
                                                                            ("Hakeem Sweet","71786288799","D","Defesa Pessoal"),
                                                                            ("Cameron Stanley","21494235199","D","Direção Automobilistica"),
                                                                            ("Stewart Smith","90575932699","D","Direção Automobilistica"),
                                                                            ("Malik Ball","11657387299","D","Direção Automobilistica"),
                                                                            ("Joshua Wood","20491969599","D","Direção Automobilistica"),
                                                                            ("Damon Gallagher","02752005499","D","Direção Automobilistica"),
                                                                            ("Neville Keller","56244884899","D","Defesa Pessoal"),
                                                                            ("Clarke Stark","27820267199","D","Defesa Pessoal"),
                                                                            ("Kennedy Franco","33832283899","D","Defesa Pessoal"),
                                                                            ("Flynn May","93250208199","D","Defesa Pessoal"),
                                                                            ("Omar Gutierrez","00645656299","D","Defesa Pessoal");
    INSERT INTO fmg_filmagem (fmg_nome,fmg_ano,fmg_duracao,diretor) VALUES ("o auto da compadecida","1919-10-09",4,1),
                                                                           ("velozes e furiosos 1","2121-02-25",3,2),
                                                                           ("velozes e furiosos 3","2020-05-11",2,4),
                                                                           ("velozes e furiosos 4","2121-09-05",4,5);
    INSERT INTO nov_novela (fmg_id,nov_capitulo,nov_desc_cap) VALUES (1,11,"tomada 1 - matar"),
                                                                     (2,12,"tomada 2 - treinar o dragão"),
                                                                     (3,9,"tomada 3 - beijo"),
                                                                     (4,12,"tomada 4 - teste do carro"),
                                                                     (5,10,"tomada 5 - batida de carro"),
                                                                     (6,13,"tomada 6 - viagem lisboa"),
                                                                     (7,15,"tomada 6.1 - viagem lisboa take 2"),
                                                                     (8,6,"tomada 7 - tiro, porrada e bomba"),
                                                                     (9,11,"tomada 8 - a culpa é do cabral"),
                                                                     (10,10,"tomada 9 - beijo"),
                                                                     (11,3,"tomada 10 - tiros e mais tiros"),
                                                                     (12,4,"tomada 11 - o rebatimento"),
                                                                     (13,5,"tomada 12 - prefiro morrer do que perder a vida"),
                                                                     (14,6,"tomada 13 - beijo"),
                                                                     (15,10,"tomada 14 - sexo +18"),
                                                                     (16,3,"tomada 15 - o mundo da voltas"),
                                                                     (17,9,"tomada 16 - o mundo deu as voltas"),
                                                                     (18,5,"tomada 17 - tiros"),
                                                                     (19,4,"tomada 18 - voltando para o Brasil"),
                                                                     (20,11,"tomada 19 - gg");
    INSERT INTO flm_filme (fmg_id,flm_descricao) VALUES (21,"ac mattis velit justo nec ante."),
                                                        (22,"arcu."),
                                                        (23,"magna. Cras convallis"),
                                                        (24,"dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis"),
                                                        (25,"erat nonummy ultricies ornare, elit elit fermentum risus,"),
                                                        (26,"amet ornare lectus justo eu arcu. Morbi sit amet"),
                                                        (27,"odio vel est tempor bibendum. Donec"),
                                                        (28,"enim. Sed nulla ante, iaculis nec, eleifend"),
                                                        (29,"urna. Ut tincidunt vehicula risus. Nulla eget"),
                                                        (30,"consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan"),
                                                        (31,"semper. Nam tempor"),
                                                        (32,"sem. Nulla"),
                                                        (33,"dui lectus rutrum urna, nec luctus"),
                                                        (34,"sed, facilisis vitae, orci. Phasellus dapibus quam quis diam."),
                                                        (35,"egestas. Fusce aliquet magna a neque. Nullam ut nisi a"),
                                                        (36,"ipsum"),
                                                        (37,"auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi"),
                                                        (38,"est. Nunc"),
                                                        (39,"arcu. Curabitur ut odio vel est"),
                                                        (40,"odio, auctor vitae, aliquet nec, imperdiet nec,"),
                                                        (41,"Curabitur vel lectus. Cum sociis"),
                                                        (42,"sit amet"),
                                                        (43,"vehicula aliquet libero. Integer"),
                                                        (44,"auctor non, feugiat nec, diam. Duis mi enim,"),
                                                        (45,"a neque. Nullam ut nisi a odio semper cursus. Integer"),
                                                        (46,"lorem tristique aliquet."),
                                                        (47,"est ac facilisis facilisis, magna tellus faucibus"),
                                                        (48,"semper et, lacinia vitae, sodales at, velit. Pellentesque"),
                                                        (49,"Phasellus fermentum convallis ligula. Donec"),
                                                        (50,"tempor, est ac mattis semper, dui lectus rutrum urna,"),
                                                        (51,"Integer"),
                                                        (52,"sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et"),
                                                        (53,"sed pede. Cum sociis natoque penatibus et magnis"),
                                                        (54,"tincidunt. Donec"),
                                                        (55,"arcu. Sed et"),
                                                        (56,"in faucibus orci luctus et ultrices"),
                                                        (57,"aliquet. Phasellus fermentum convallis ligula. Donec"),
                                                        (58,"neque."),
                                                        (59,"Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat"),
                                                        (60,"pharetra, felis eget varius ultrices, mauris ipsum porta elit, a");