-- a. Create Roles
Create role if not exists ce_user, ce_admin;

-- Grant privileges to user roles
Grant select on campus_eats_fall2020 .* to ce_user;
Grant all on campus_eats_fall2020 .* to ce_admin;

-- b. Create Users
Create user if not exists haps_user@localhost identified by 'pa55word';
Create user if not exists jay_admin@localhost identified by 'pa55word';

-- c. assign roles
Grant ce_user to haps_user@localhost;
Grant ce_admin to jay_admin@localhost;

-- d. create view for restaurant table
Drop View If Exists `view_haps`;
Create View `view_haps` AS select * from restaurant 
where restaurant_id = 1;

-- e. grant privilege to haps 
Grant select, update on campus_eats_fall2020.view_haps to haps_user@localhost;

-- f. Privileges of haps 
Show grants for haps_user@localhost;
