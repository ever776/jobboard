create table jobs (
	id int PRIMARY KEY AUTO_INCREMENT,
  job_title varchar(255),
  job_region varchar(255),
  job_type varchar(255),
  vacancy varchar(255),
  experience varchar(255),
  salary varchar(255),
  gender varchar(255),
  aplication_deadline varchar(255),
  jobdescription varchar(255),
  responsibilities varchar(255),
  education_experience varchar(255),
  otherbenifits varchar(255),
  image varchar(255)
);

insert into jobs 
(
  job_title,
  job_region,
  job_type,
  vacancy,
  experience,
  salary,
  gender,
  aplication_deadline,
  jobdescription,
  responsibilities,
  education_experience,
  otherbenifits,
  image
  ) values 
  (
    'Product Designer',
    'New York, New York',
    'full time',
    '2',
    '2 to 3 year(s)',
    '$60k - $100k',
    'Any',
    'April 28, 2019',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et ligula urna. Morbi aliquam nunc ac condimentum blandit. Sed interdum magna metus, vitae auctor arcu iaculis et. Suspendisse nec nulla sit amet nisi rutrum sagittis.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et ligula urna. Morbi aliquam nunc ac condimentum blandit. Sed interdum magna metus, vitae auctor arcu iaculis et. Suspendisse nec nulla sit amet nisi rutrum sagittis.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et ligula urna. Morbi aliquam nunc ac condimentum blandit. Sed interdum magna metus, vitae auctor arcu iaculis et. Suspendisse nec nulla sit amet nisi rutrum sagittis.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et ligula urna. Morbi aliquam nunc ac condimentum blandit. Sed interdum magna metus, vitae auctor arcu iaculis et. Suspendisse nec nulla sit amet nisi rutrum sagittis.',
    'job_logo_1.jpg'
    );

create table categories
(
  id int(10) PRIMARY KEY AUTO_INCREMENT,
  name varchar(255) not null,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp
);

create table jobsaved 
(
  id int(10) PRIMARY KEY AUTO_INCREMENT,
  job_id int(10),
  user_id int(10),
  job_image varchar(255),
  job_title varchar(255),
  job_region varchar(255),
  job_type varchar(255),
  company varchar(255)
);

ALTER TABLE jobsaved
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

create table applications
(
  id int(10) PRIMARY KEY AUTO_INCREMENT,
  cv varchar(255),
  user_id int(10),
  job_image varchar(255),
  job_title varchar(255),
  job_region varchar(255),
  company varchar(255),
  job_type varchar(255),
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp
);

ALTER TABLE applications
ADD COLUMN job_id INT(10) not null AFTER cv;

alter table users
add column image varchar(255) default "pic.jpg" not null after password;

create table searches 
(
  id int(10) PRIMARY KEY AUTO_INCREMENT,
  keyword varchar(255) not null,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp
);

create table admins
(
  id int(10) PRIMARY KEY AUTO_INCREMENT,
  name varchar(255) not null,
  email varchar(255) not null,
  password varchar(255) not null,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp
);

ALTER TABLE jobs MODIFY jobdescription TEXT;
ALTER TABLE jobs MODIFY responsibilities TEXT;
ALTER TABLE jobs MODIFY education_experience TEXT;
ALTER TABLE jobs MODIFY otherbenifits TEXT;

ALTER TABLE applications
ADD COLUMN email varchar(255) not null AFTER user_id;