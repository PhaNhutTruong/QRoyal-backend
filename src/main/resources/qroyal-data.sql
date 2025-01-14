INSERT INTO "public".catalog(name, description)
VALUES ('Smart Watch', 'This is smart watch'),
       ('Physical Watch', 'This is physical watch'),
       ('Virtual Watch', 'This is virtual watch'),
       ('Classic Watch', 'This is classic watch');

INSERT INTO "public".product(name, images, description, price, discount, quantity, catalog_id, created)
VALUES ('First Watch', 'product1-1,product1-2', 'This is first watch', 10000, 0, 100, 1, CURRENT_DATE),
       ('Second Watch', 'product2-1,product2-2', 'This is second watch', 20000, 20, 100, 2, CURRENT_DATE),
       ('Thirt Watch', 'product3-1,product3-2', 'This is Thirt watch', 30000, 30, 100, 3, CURRENT_DATE),
       ('Alpha Watch', 'product4-1,product4-2', 'This is alpha watch', 40000, 40, 100, 4, CURRENT_DATE),
       ('Beta Watch', 'product5-1,product5-2', 'This is beta watch', 50000, 50, 100, 1, CURRENT_DATE);

INSERT INTO "public".role(name)
VALUES ('ROLE_ADMIN'),
       ('ROLE_CLIENT'),
       ('ROLE_STAFF');

INSERT INTO "public".user(name, username, password, enabled, description)
VALUES ('First User', 'fuser@gmail.com', '$2a$12$EL2CTBSN3KC3m39pK0G4re7rBKel2FTN.v7wWCZ9/AuT/0ZVBUUG6', true,
        'This is first user'),
       ('Second User', 'suser@gmail.com', '$2a$12$EL2CTBSN3KC3m39pK0G4re7rBKel2FTN.v7wWCZ9/AuT/0ZVBUUG6', true,
        'This is second user'),
       ('Thirt User', 'tuser@gmail.com', '$2a$12$EL2CTBSN3KC3m39pK0G4re7rBKel2FTN.v7wWCZ9/AuT/0ZVBUUG6', true,
        'This is thirt user'),
       ('Alpha User', 'auser@gmail.com', '$2a$12$EL2CTBSN3KC3m39pK0G4re7rBKel2FTN.v7wWCZ9/AuT/0ZVBUUG6', false,
        'This is alpha user');

INSERT INTO "public".order(name, phone, address, status, description, created, payment, user_id)
VALUES ('First User', '0123456789', '100-chicago, america', 'waiting', '', CURRENT_DATE, 'paid', 1),
       ('Second User', '0123456789', '100-chicago, america', 'delivery', '', CURRENT_DATE, 'paid', 2),
       ('Thirt User', '0123456789', '100-chicago, america', 'error', '', CURRENT_DATE, 'paid', 3),
       ('Alpha User', '0123456789', '100-chicago, america', 'complete', '', CURRENT_DATE, 'paid', 4);

INSERT INTO "public".order_detail(quantity, total, order_id, product_id)
VALUES ('10', '100000', 1, 1),
       ('10', '200000', 2, 2),
       ('10', '300000', 3, 3),
       ('10', '400000', 4, 4),
       ('10', '500000', 1, 5);

INSERT INTO "public".otp_message(random_code, created, expired, user_id)
VALUES ('123', '10/10/2010', CURRENT_DATE, 1),
       ('123', '10/10/2010', CURRENT_DATE, 2),
       ('123', '10/10/2010', CURRENT_DATE, 3),
       ('123', '10/10/2010', CURRENT_DATE, 4);

INSERT INTO "public".review(rate, comment, images, created, user_id, product_id)
VALUES (1, 'Good', 'review1-1,review1-2', CURRENT_DATE, 1, 1),
       (2, 'Bad', 'review2-1,review2-2', CURRENT_DATE, 2, 2),
       (3, 'Perfect', 'review3-1,review3-2', CURRENT_DATE, 3, 3),
       (4, 'So Bad', 'review4-1,review4-2', CURRENT_DATE, 4, 4),
       (5, 'Good', 'review5-1,review5-2', CURRENT_DATE, 1, 5);

INSERT INTO "public".role_assignment(user_id, role_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 2),
       (1, 2),
       (1, 3);

