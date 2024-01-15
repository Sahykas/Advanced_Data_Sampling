insert into collections (collection_name, graduate_year)
values ('2000', 2010),
       ('discoteka 80', 2013),
       ('discoteka 90', 2014),
       ('grust', 2019);

insert into tracks (id_album, track_name, duration)
values (1, 'Napitki po-krepche', '00:05:06'),
       (2, 'Gora', '00:10:02'),
       (2, 'Malinoviy svet', '00:07:10'),
       (2, 'Kasayetsa', '00:04:10'),
       (3, 'Boulevard', '00:05:10'),
       (1, 'Kroshka', '00:08:10');

insert into albums (album_name, graduated_year)
values ('Iscushenie', 1987),
       ('Detstvo', 2010),
       ('Unost', 2022);
      
insert into genre (genre_name)
values ('Rock'),
       ('Rap'),
       ('Pop');
      
insert into executors (executor_name)
values ('Korzh'),
       ('Zveri'),
       ('Green day'),
       ('Ruki vverh');

insert into track_collection (id_collection, id_track)
values (1, 1),
       (1, 6),
       (2, 2),
       (2, 3),
       (3, 4),
       (3, 1),
       (4, 4),
       (4, 6);

insert into genre_executor (id_genre, id_executor)
values (1, 2),
       (1, 3),
       (2, 1),
       (3, 2),
       (3, 4);

insert into executor_album (id_album, id_executor)
values (1, 2),
       (1, 3),
       (2, 1),
       (2, 2),
       (3, 1),
       (3, 2),
       (3, 3);

insert into tracks (id_album, track_name, duration)
values (3, 'My boy', '00:02:44');

insert into tracks (id_album, track_name, duration)
values (2, 'Takaya lubov', '00:02:42');

insert into albums (album_name, graduated_year)
values ('Molodost', 2019);

insert into tracks (id_album, track_name, duration)
values (4, 'Cooperations', '00:03:44');
