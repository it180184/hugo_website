-- This file allow to write SQL commands that will be emitted in test and dev.
-- The commands are commented as their support depends of the database
-- insert into myentity (id, field) values(nextval('hibernate_sequence'), 'field-1');
-- insert into myentity (id, field) values(nextval('hibernate_sequence'), 'field-2');
-- insert into myentity (id, field) values(nextval('hibernate_sequence'), 'field-3');


insert into skill (id, name, imgUrl)
values(nextval('hibernate_sequence'), 'kubernetes', 'https://upload.wikimedia.org/wikipedia/commons/3/39/Kubernetes_logo_without_workmark.svg'),
      (nextval('hibernate_sequence'), 'Kotlin', 'https://upload.wikimedia.org/wikipedia/commons/3/39/Kubernetes_logo_without_workmark.svg'),
      (nextval('hibernate_sequence'), 'Swift', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Swift_logo.svg/1024px-Swift_logo.svg.png');