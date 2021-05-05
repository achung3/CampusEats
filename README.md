# CampusEats

Murach Ch 7

    1.  Write a SELECT statement that returns three columns:  vendor id, vendor_name and the largest unpaid invoice for each vendor.
    Group the result set appropriately in order to get the desired results. Test your query. Include a comment as the first line with the problem number 1a and capture a screen shot of the query and results for #1 a. Place in a word document.

    Write a second SELECT statement that uses the first SELECT statement in the FROM clause.  The main query should return a
    single value that represents the average of the largest unpaid invoices for each vendor. Test your query. Include a comment as the first line with the problem number 1b and capture a screen shot of the query and results for #1 b. Add to the word document.

    2.  Rewrite #1 so that it uses a Common Table Expression (CTE) instead of an inline view. Test your query. Include a comment as the first line with the problem number 2 and capture a screen shot of the query and results for #2. Add to the word document.

    3.  Use a correlated subquery to return one row per vendor, representing the vendor's newest unpaid invoice (the one with the latest date). Each row should return five columns:  vendor_id, vendor_name, invoice_number, invoice_date and invoice_total. Sort the results by by the vendor_id column.  Test the query. Include a comment as the first line with the problem number 3 and capture a screen shot of the query and results for #3. Add to the word document.

    4.  Rewrite #3 so that it uses an inline view instead of a correlated subquery.  Test the query. Include a comment as the first line with the problem number 4 and capture a screen shot of the query and results for #4. Add to the word document.

[Murach Ch 7 Subqueries Project HW.docx](https://github.com/achung3/CampusEats/files/6424562/Murach.Ch.7.Subqueries.Project.HW.docx)


Murach Ch 11 and 12

    1) Read the instructions in the Murach Chapter 11 and 12 HW Word Document (linked below with this assignment). 
    2)  Load and execute the SQL script (one person can do this and share screen) - for Drop Database at top, add "if exists"
    3)  Reverse Engineer the database to the model.
    4)   Explore database and model for relationships, indexes, etc.
    5)   Develop a plan for:

          a)  depending on use case, enhancing the EERD and creating, building tables for your ratings system
          b)  adding test data
          c)   testing the database
          d)   create 3 advanced views that include the ratings table and make sense


    PART 1:
    1)   Using the script that is provided, load the CampusEats database using the SQL script.  Reverse engineer to the CampusEats Model.  Study the model and the database to understand the tables, relationships and characteristics of existing data.
    2)   Review the business rules below.  Make sure the database is in compliance with the business rules.3
    3)   Following proper guidelines for fully normalized relational databases, your team is responsible for the addition of a rating system for both drivers and restaurants.  The rating files must show supertypes and subtypes. Load the tables with sufficient test data (http://www.generatedata.com can be used or the records can be entered manually– 40 or more rating records for your test data conforming to your supertype-subtype requirements).
    4)   After adding the tables, reverse engineer to update the model.
    5)   Analyze the indexes that are already in the database. Implement any improvements based on the business rules and your interpretation of how the data might be used.
    6)   Create three advanced views that include the ratings tables.
    
    
    SUBMIT:
    * Narrated PPT file (5 minutes or less) with the following:
    *     Title Slide and Team MembersModel (explain implementation of ratings tables)
    *     CREATE TABLE code for the new tables
    *     Views with Output 
    *     Indexes
    *     Documenation of Any Corrections Made to Existing Database 
    *Database Backup or Dump File 
    
    
    Background and Business Rules
    
    With the threat of the Corona virus, food delivery services are more important than ever.  Local restaurants are eager to find easy ways to have food delivered to customers without having to hire delivery employees. Even when things return to normal, many experts feel that food delivery will be something that we all will have become accustomed to as a part of our regular activites (even more than before).  
    
    Students love food delivery services on campus.  Campuses do not like the steady stream of visitors that may or  may not have a formal connection with the university.  Companies such as UberEats and GrubHub are happy to deliver on campus, but many schools are wondering if they should take control of the delivery and ensure that students and authorized university employees are the only ones delivering food on campus for safety and health reasons.
    
    One startup that has tried to tackle this problem  is http://www.craveoncampus.comThe company is a startup and  the site shows evidence of the system design.  Your assignment is to understand a test database for a campus controlled food delivery service similar to craveoncampus.com.  This database is the campuseats database.  You will be enhancing the database with a rating system for both restaurants and delivery drivers.  You can also look at grubhub and ubereats for ideas.  Please remember this is extending a prototype for the database, not a fully implemented working model.   Here is some basic information on the existing database prototype: (the database is created and populated with data but does not include the rating system)

      1)   Persons (campus faculty, staff, students) have accounts in the system with personid (PK), name, email, cell, etc.  For faculty we also keep title, highest degree, and degreecollege.  For staff we keep Position and AdminYorN.  For students we keep GradYear and major plus type (undergraduate, graduate).  Only faculty, staff and students are included.
      2)   We have Locations which are spots on campus where food can be delivered.  Some examples are dorms, the student center, and approved classroom buidings.  LocationID, LocationName, LocationAddress and (optional) Latitude and Longitude are maintained in the database. Additionally a food delivery drop-off point is included (designated place for meeting or delivering food in the location – this can be a brief description).
      3)   Persons can also be drivers (delivery personnel which have to be approved). Drivers have licensenumber and datehired plus ratings. You may also want to keep vehicle information (relative to the vehicle that the driver uses).a.   UNCC will start with 8 approved delivery personnel – the system is in test mode.  You can assume all individuals have been cleared and they can be included in the database.  b.   All delivery personnel are students.
      4)   There is a flat fee of $5 for each delivery.  A person orders food one to many times.  An individual delivery is tied to one and only one person for the order.  The order is for one and only one restaurant.  For the items on the order we will only need to keep the total price and delivery charge, along with the driver and delivery times.  There should also be a unique identifier (ID) that ties to the id for the order at the indivudual restaurant.  You can assume that the actual items on the order need to come from the restaurant database.
      5)   Food providers or restaurants have to be approved in order to be included in the database.  You can include ten restaurants or more of your choice for the test database.  Information will include an ID, location, schedule, and a link to the web site along with other attributes you may identify.
      6)   The database will serve as an important data collection source providing valuable information about nutrition and eating habits of campus community members.
      
Intial Model:      
![intialModel](https://user-images.githubusercontent.com/42848488/117146361-21d6a180-ad82-11eb-9609-ee8de6ad4877.png)
Model with Ratings:
![modelwithratings](https://user-images.githubusercontent.com/42848488/117146363-226f3800-ad82-11eb-85a5-92ce64ce2b82.png)

[Murach Ch 11 and 12 HW_Group21.pptx](https://github.com/achung3/CampusEats/files/6424558/Murach.Ch.11.and.12.HW_Group21.pptx)




HW Ch 18

    This is a group assignment - this is the last part of your Campus Eats Database assignments or "project"

    1)  Using the Campus Eats Database, Create the Following:

    a)  two roles:  ce_user and ce_admin

    ce_user has select privileges to all tables
    ce_admin has full privileges to all tables

    b)  two user accounts:  haps_user with password pa55word and jay_admin with password pa55word (both @localhost if appropriate)

    c)  assign the ce_user role to haps_user and the ce_admin role to jay_admin

    d)  create a view to the restaurant table that is named view_haps and only shows restaurant id 1

    e)  grant haps_user both select and update privileges to the view

[HW Ch 18_ Murach and Campus Eats.pdf](https://github.com/achung3/CampusEats/files/6427306/HW.Ch.18_.Murach.and.Campus.Eats.pdf)
