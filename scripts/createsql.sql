create view driver_rat as select * from driver_ratings where ontime_rating > 5 order by ontime_rating;
select rating_id, food_rating from restaurant_ratings where food_rating > 8 order by rating_id;
select d.rating_id, d.ontime_rating, r.food_rating from  driver_ratings d
join restaurant_ratings r on r.rating_id = d.rating_id;

create table ratings (
rating_id int(11) NOT NULL primary key,
overall_rating int(11),
order_id int(11),
CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES `order` (order_id) 
);
create table driver_ratings (
rating_id int(11) NOT NULL Primary Key,
ontime_rating int(11),
courteous_rating int(11)
);

create table restaurant_ratings (
rating_id int(11) NOT NULL Primary key,
food_rating int(11),
price_rating int(11)
);

INSERT INTO `driver_ratings` (`rating_id`,`ontime_rating`,`courteous_rating`) VALUES
 (1,10,4),(2,9,1),(3,4,6),(4,5,7),(5,3,10),(6,9,10),(7,4,9),(8,5,8),(9,2,4),(10,9,7);
INSERT INTO `driver_ratings` (`rating_id`,`ontime_rating`,`courteous_rating`) VALUES
 (11,7,8),(12,2,8),(13,10,6),(14,6,5),(15,8,6),(16,5,4),(17,1,3),(18,10,3),(19,3,1),(20,10,6);
INSERT INTO `driver_ratings` (`rating_id`,`ontime_rating`,`courteous_rating`) VALUES
 (21,3,6),(22,5,7),(23,8,3),(24,1,2),(25,10,10),(26,8,7),(27,8,4),(28,4,4),(29,7,8),(30,10,5);
INSERT INTO `driver_ratings` (`rating_id`,`ontime_rating`,`courteous_rating`) VALUES
 (31,5,10),(32,10,3),(33,9,2),(34,3,4),(35,5,1),(36,4,2),(37,6,10),(38,4,10),(39,5,7),(40,6,5);


INSERT INTO `restaurant_ratings` (`rating_id`,`food_rating`,`price_rating`) VALUES
 (1,1,5),(2,2,10),(3,10,7),(4,1,10),(5,10,10),(6,3,10),(7,7,9),(8,1,9),(9,2,5),(10,5,4);
INSERT INTO `restaurant_ratings` (`rating_id`,`food_rating`,`price_rating`) VALUES
 (11,3,3),(12,1,3),(13,6,1),(14,8,3),(15,7,5),(16,5,10),(17,5,1),(18,2,8),(19,4,1),(20,7,4);
INSERT INTO `restaurant_ratings` (`rating_id`,`food_rating`,`price_rating`) VALUES
 (21,1,3),(22,7,9),(23,1,1),(24,9,5),(25,6,9),(26,9,10),(27,3,5),(28,4,10),(29,1,5),(30,8,3);
INSERT INTO `restaurant_ratings` (`rating_id`,`food_rating`,`price_rating`) VALUES
 (31,8,8),(32,4,4),(33,3,2),(34,9,4),(35,2,7),(36,3,1),(37,9,9),(38,9,5),(39,6,9),(40,2,4);
