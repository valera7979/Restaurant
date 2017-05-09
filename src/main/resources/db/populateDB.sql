DELETE FROM user_roles;
DELETE FROM dishes;
DELETE FROM users;
DELETE FROM restaurants;
DELETE FROM votes;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password');

INSERT INTO users (name, email, password)
VALUES ('Admin', 'admin@gmail.com', 'admin');

INSERT INTO user_roles (role, user_id) VALUES
  ('ROLE_USER', 100000),
  ('ROLE_ADMIN', 100001);

INSERT  INTO restaurants (name) VALUES
  ('Cha-cha'),
  ('Shaverma'),
  ('PARIS');

INSERT INTO dishes (restaurant_id, description, price, date_time) VALUES
  (100002, 'fish', 100, '2017-04-30 10:00:00'),
  (100002, 'soup', 20, '2017-04-30 10:00:00'),
  (100003, 'shaverma', 40, '2017-04-30 10:00:00'),
  (100003, 'beer', 15, '2017-04-30 10:00:00'),
  (100003, 'juice', 10, '2017-04-30 10:00:00'),
  (100004, 'cake', 17, '2017-04-30 10:00:00'),
  (100004, 'Black Tea', 10, '2017-04-30 10:00:00'),
  (100002, 'fish', 100, now()),
  (100002, 'soup', 20, now()),
  (100003, 'shaverma', 40, now()),
  (100003, 'beer', 15, now()),
  (100003, 'juice', 10, now()),
  (100004, 'cake', 17, now()),
  (100004, 'Black Tea', 10, now());

INSERT  INTO votes (restaurant_id, date, user_id) VALUES
  (100004,now(),100000);