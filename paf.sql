create database paf;

drop table observation;
drop table reservation;
drop table pharmacist_medicine;
drop table rating_doctor;
drop table doctor_speciality;
drop table rating;
drop table medical_report;
drop table payment;
drop table medicine;
drop table sys_admin;
drop table pharmacist;
drop table pharmacy;
drop table hospital;
drop table patient;
drop table doctor;

create table sys_admin(
    id int auto_increment,
    email varchar(150) unique not null,
    f_name varchar(150),
    l_name varchar(150),
    gender integer, /*  1:male 2:female 3:other  */
    address varchar(150),
    contact_no varchar(10),
    dob date,
    pass varchar(150),
    image_link varchar(255) default 'source/img/user.jpg',

    delete_flag integer default 0, /*  0:deleted  1:available*/
    created_at timestamp not null default current_timestamp(),
    updated_at timestamp not null default current_timestamp() on update current_timestamp(),

    access_level integer default 1, /*  1:admin-level 2:developer-level 3:supder-admin  */
    activation integer default 1, /*  0:pending 1:activated 2:deactivated 3:suspended  */

    primary key(id)
);

create table patient(
    id int auto_increment,
    email varchar(150) unique not null,
    f_name varchar(150),
    l_name varchar(150),
    gender integer, /*  1:male 2:female 3:other  */
    address varchar(150),
    contact_no varchar(10),
    dob date,
    pass varchar(150),
    image_link varchar(255) default 'source/img/user.jpg',

    delete_flag integer default 0, /*  0:deleted  1:available*/
    created_at timestamp not null default current_timestamp(),
    updated_at timestamp not null default current_timestamp() on update current_timestamp(),

    marital_status integer default 1, /*  1:married 2:single 3:devorced  */
    activation integer default 0, /*  0:pending 1:activated 2:deactivated 3:suspended  */

    primary key(id)
);

create table doctor(
    id int auto_increment,
    email varchar(150) unique not null,
    f_name varchar(150),
    l_name varchar(150),
    gender integer, /*  1:male 2:female 3:other  */
    address varchar(150),
    contact_no varchar(10),
    dob date,
    pass varchar(150),
    image_link varchar(255) default 'source/img/user.jpg',

    delete_flag integer default 0, /*  0:deleted  1:available*/
    created_at timestamp not null default current_timestamp(),
    updated_at timestamp not null default current_timestamp() on update current_timestamp(),

    professional_statement varchar(255),
    no_of_views integer default 0,
    activation integer default 0, /*  0:pending 1:activated 2:deactivated 3:suspended  */

    primary key(id)
);

create table doctor_speciality(
    doctor_id int,
    speciality varchar(255),
    primary key(doctor_id, speciality),
    foreign key (doctor_id) references doctor(id)
);

create table rating(
    id int auto_increment,
    rating int default 0, /*  rating can be 0-5  */
    rating_note varchar(255),

    delete_flag integer default 0, /*  0:deleted  1:available*/
    created_at timestamp not null default current_timestamp(),
    updated_at timestamp  not null default current_timestamp() on update current_timestamp(),

    primary key(id)
);

create table pharmacy(
    id int auto_increment,
    name varchar(255),
    address varchar(255),
    contact_no varchar(10),

    delete_flag integer default 0, /*  0:deleted  1:available*/
    created_at timestamp not null default current_timestamp(),
    updated_at timestamp  not null default current_timestamp() on update current_timestamp(),

    primary key(id)
);

create table pharmacist(
    id int auto_increment,
    email varchar(150) unique not null,
    f_name varchar(150),
    l_name varchar(150),
    gender integer, /*  1:male 2:female 3:other  */
    address varchar(150),
    contact_no varchar(10),
    dob date,
    pass varchar(150),
    image_link varchar(255) default 'source/img/user.jpg',

    delete_flag integer default 0, /*  0:deleted  1:available*/
    created_at timestamp not null default current_timestamp(),
    updated_at timestamp not null default current_timestamp() on update current_timestamp(),

    activation integer default 0, /*  0:pending 1:activated 2:deactivated 3:suspended  */

    working_pharmacy_id int,
    primary key(id),
    foreign key(working_pharmacy_id) references pharmacy(id)
);

create table rating_doctor(
    doctor_id int,
    patient_id int,
    rating_id int,
    primary key(doctor_id,patient_id,rating_id),
    foreign key (doctor_id) references doctor(id),
    foreign key (patient_id) references patient(id),
    foreign key (rating_id) references rating(id)
);

create table hospital(
    id int auto_increment,
    name varchar(150),
    address varchar(150),
    email varchar(150),
    city varchar(150),
    district varchar(150),
    contact_no varchar(10),

    delete_flag integer default 0, /*  0:deleted  1:available*/
    created_at timestamp not null default current_timestamp(),
    updated_at timestamp not null default current_timestamp() on update current_timestamp(),

    activation integer default 0, /*  0:pending 1:activated 2:deactivated 3:suspended  */

    primary key(id)
);


create table medical_report(
    id int auto_increment,
    medical_lab varchar(255),
    report_link varchar(255),
    type int,
    taken_date date,
    patient_comment varchar(255),

    delete_flag integer default 0, /*  0:deleted  1:available*/
    created_at timestamp not null default current_timestamp(),
    updated_at timestamp not null default current_timestamp() on update current_timestamp(),

    patient_id int,

    primary key(id),
    foreign key(patient_id) references patient(id)
);

create table payment(
    id varchar(255),
    patient_id int,
    amount double,
    payment_datetime timestamp,
    refund_state int default 0, /*  0:non-refundable 1:pending-request 2:refundable  */
    method varchar(255),

    delete_flag integer default 0, /*  0:deleted  1:available*/
    created_at timestamp not null default current_timestamp(),
    updated_at timestamp not null default current_timestamp() on update current_timestamp(),

    primary key(id),
    foreign key(patient_id) references patient(id)
);

create table medicine(
    id int auto_increment,
    medical_name varchar(255),
    brand_name varchar(255),
    expiration_date date,
    sold_state int default 0, /*  0:available 1:sold 2:expired*/

    delete_flag integer default 0, /*  0:deleted  1:available*/
    created_at timestamp not null default current_timestamp(),
    updated_at timestamp  not null default current_timestamp() on update current_timestamp(),

    price double default 0.0,
    quantity int default 0,

    patient_id int,
    pharmacy_id int,
    primary key(id),
    foreign key(patient_id) references patient(id),
    foreign key(pharmacy_id) references pharmacy(id)
);

create table pharmacist_medicine(
    pharmacist_id int,
    medicine_id int,
    date_added date,
    foreign key(pharmacist_id) references pharmacist(id),
    foreign key(medicine_id) references medicine(id)
);

create table reservation(
    reservation_token int auto_increment,
    patient_id int default null,
    hospital_id int default null,
    doctor_id int default null,
    payment_id varchar(255) default null,
    reservation_state int default 0,  /*  0:active  1:pending  2:reserved  3:DoctorMade 4:HospitalMade */
    doctor_charge double,
    hospital_charge double,
    start_time varchar(5),
    end_time varchar(5),
    schedule_date date,
    delete_flag integer default 0, /*  0:deleted  1:available*/
    created_at timestamp not null default current_timestamp(),
    updated_at timestamp  not null default current_timestamp() on update current_timestamp(),
    foreign key(patient_id) references patient(id),
    foreign key(doctor_id) references doctor(id),
    foreign key(hospital_id) references hospital(id),
    foreign key(payment_id) references payment(id),
    primary key(reservation_token)
);


create table observation(
    doctor_id int,
    medical_report_id int,
    doctor_comment varchar(255),
    checked_date date,
    primary key(doctor_id, medical_report_id),
    foreign key(doctor_id) references doctor(id),
    foreign key(medical_report_id) references medical_report(id)
);
