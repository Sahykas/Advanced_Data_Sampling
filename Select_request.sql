select track_name, duration from tracks t 
where duration = (select MAX(duration) from tracks);

select track_name from tracks t 
where duration > '00:03:30';

select collection_name from collections c 
where graduate_year between 2018 and 2020;

select * from executors e 
where executor_name not like '% %'

select track_name from tracks t 
where lower(track_name) like '%my%' or lower(track_name) like '%мой%';

select mg.genre_name, count(ge.id_executor) from genre_executor ge
inner join music_genre mg using (id_genre)
group by mg.genre_name;

select count(t.id_track)  from tracks t 
join albums a using (id_album)
where a.graduated_year between 2019 and 2020;

select t.id_album, avg(t.duration) from tracks t 
join albums a using (id_album)
group by t.id_album;

select e.executor_name from executors e 
join executor_album ea using (id_executor)
join albums a using (id_album)
where graduated_year != 2019;

select distinct c.collection_name from collections c 
join track_collection tc using (id_collection)
join tracks t using (id_track)
join albums a using (id_album)
join executor_album ea using (id_album)
where ea.id_executor = 2;

select track_name from tracks t 
left join track_collection c on t.id_track =c.id_track
where c.collection_id is null;

select e.executor_name from executors e 
join executor_album ea using (id_executor)
join albums a using (id_album) 
join tracks t using (id_album)
where t.duration = (select MIN(duration) from tracks);

select name from
(select a.album_name as Name, count(t.id_track) as count_tracks from albums a 
join tracks t using (id_album)
group by a.album_name)
where count_tracks = ( select MIN(count_tracks) from (select a.album_name as Name, count(t.id_track) as count_tracks from albums a 
join tracks t using (id_album)
group by a.album_name));

select name from (select a.album_name as name, COUNT(ge.id_genre) as count_genre from albums a 
inner join executor_album ea using (id_album)
inner join genre_executor ge using (id_executor)
group by a.album_name)
where count_genre > 1
