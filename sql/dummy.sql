-- liquibase formatted sql

-- changeset ljordaan:table-orderitemstate-insertion
INSERT INTO 'OrderItemState' ('OrderItemStateID', 'OrderState')
VALUES 
    (1, 'Ordered'), 
    (2, 'Shipped'), 
    (3, 'Delivered'), 
    (4, 'Returned with Defect'), 
    (5, 'Returned without Defect'), 
    (6, 'Canceled');
-- rollback DELETE FROM TABLE "OrderItemState";

-- changeset ljordaan:table-beertype-insertion
INSERT INTO 'BeerType' ('BeerTypeID', 'BeerType') 
VALUES 
    (1, 'Stout'),
    (2, 'Lager'),
    (3, 'Pale Ale'),
    (4, 'Wheat Beer'),
    (5, 'Pilsner'),
    (6, 'Sour Beer'),
    (7, 'Amber Ale'),
    (8, 'Porter'),
    (9, 'Hefeweizen'),
    (10, 'Malt');
-- rollback DELETE FROM TABLE "BeerType";

-- changeset lbradford:table-customer-insertion
INSERT INTO 'Customer' ('CustomerID', 'Name', 'Email', 'ContactNumber') VALUES 
(1, 'Buzzbean', 'dvasyukhnov0@devhub.com', '+352 596 515 9541'),
(2, 'Feednation', 'stiley1@squarespace.com', '+58 869 343 1241'),
(3, 'Thoughtstorm', 'mskudder2@shutterfly.com', '+1 940 597 9707'),
(4, 'Gabspot', 'ddiiorio3@unicef.org', '+86 319 479 6848'),
(5, 'Zoonoodle', 'jeveritt4@jiathis.com', '+86 678 635 4212'),
(6, 'Vidoo', 'bwedderburn5@goo.gl', '+7 484 577 1646'),
(7, 'Photospace', 'obarajaz6@marriott.com', '+51 415 553 9464'),
(8, 'Voonte', 'vdyett7@omniture.com', '+351 659 477 5898'),
(9, 'Livetube', 'tconnachan8@ucla.edu', '+356 937 829 9865'),
(10, 'Kaymbo', 'geades9@naver.com', '+86 575 798 1979');

-- rollback DELETE FROM TABLE "Customer";
