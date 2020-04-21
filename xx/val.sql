insert into patient(email,f_name,l_name,gender,address,contact_no,dob,pass,image_link,marital_status)
values(
    'sisira.k@gmail.com',
    'Sisira',
    'Kodagoda',
    1,
    '296 B, Motemulla, Yogiyana',
    '0312258946',
    '1978-04-14',
    'pass1234',
    'patient1.jpg',
    1
),(
    'yohan.k@gmail.com',
    'Yohan',
    'Kodagoda',
    2,
    '296 B, Motemulla, Yogiyana',
    '0765742200',
    '2000-07-26',
    'pass1234',
    'patient2.jpg',
    1
);

insert into doctor(email,f_name,l_name,gender,address,contact_no,dob,pass,image_link,professional_statement)
values(
    'duminda.g.k@gmail.com',
    'Duminda',
    'Kodagoda',
    1,
    'St.Annes St. Averiwatta, Wattala',
    '0765742200',
    '1990-02-27',
    'pass123',
    'doctor4.jpg',
    'Talented, knowledgeable, and certified medical professional with 10 years of experience in cardiology unit. Working as a medical Doctor with Hemas Hospital, to contribute top notch services to patients.'
),(
    'abinaya.yoga.k@gmail.com',
    'Abinaya',
    'Yoganathan',
    2,
    'Kotahena St. Colombo 10',
    '0775122944',
    '1993-08-26',
    'passy123',
    'doctor4.jpg',
    'Talented, knowledgeable, and certified medical professional with 10 years of experience in cardiology unit. Working as a medical Doctor with Hemas Hospital, to contribute top notch services to patients.'
);


insert into doctor_speciality values(
    '1',
    'Cardiologist'
);
insert into doctor_speciality values(
    '1',
    'Abdominal Radiology'
);


insert into hospital(name,address,email,city,district,contact_no)
values(
'Hemas',
'389 Negombo-Colombo Main Rd, Wattala 11300',
'hemas.wattala@gmail.com',
'Wattala',
'Gampaha',
'0765742200'
);

insert into hospital(name,address,email,city,district,contact_no)
values(
'Lanka Hospital',
'578 Elvitigala Mawatha, Colombo 00500',
'lankahospital@gmail.com',
'Kollupitiya',
'Colombo',
'0712251944'
);

/*Add Appointment by Hospital*/
insert into reservation(
    hospital_id,
    hospital_charge,
    doctor_id,
    doctor_charge,
    start_time,
    end_time,
    schedule_date
)values(
    1,
    2,
    1,
    3,
    '17:00',
    '17:30',
    '2020-04-21'
),
(
    1,
    2,
    1,
    3,
    '17:30',
    '18:00',
    '2020-04-21'
),(
    1,
    2,
    1,
    3,
    '18:00',
    '18:30',
    '2020-04-21'
),(
    1,
    2,
    1,
    3,
    '18:30',
    '19:00',
    '2020-04-21'
),(
    1,
    2,
    1,
    3,
    '19:00',
    '19:30',
    '2020-04-21'
),(
    1,
    2,
    1,
    3,
    '19:30',
    '20:00',
    '2020-04-21'
),(
    1,
    2,
    1,
    3,
    '20:00',
    '20:30',
    '2020-04-21'
),(
    1,
    2,
    1,
    3,
    '20:30',
    '21:00',
    '2020-04-21'
),(
    1,
    2,
    1,
    3,
    '21:00',
    '21:30',
    '2020-04-21'
),(
    1,
    2,
    1,
    3,
    '21:30',
    '22:00',
    '2020-04-21'
);

insert into reservation(
    hospital_id,
    hospital_charge,
    doctor_id,
    doctor_charge,
    start_time,
    end_time,
    schedule_date
)values(
    2,
    3,
    1,
    4,
    '17:00',
    '17:30',
    '2020-04-22'
),
(
    2,
    3,
    1,
    4,
    '17:30',
    '18:00',
    '2020-04-22'
),(
    2,
    3,
    1,
    4,
    '18:00',
    '18:30',
    '2020-04-22'
),(
    2,
    3,
    1,
    4,
    '18:30',
    '19:00',
    '2020-04-22'
),(
    2,
    3,
    1,
    4,
    '19:00',
    '19:30',
    '2020-04-22'
),(
    2,
    3,
    1,
    4,
    '19:30',
    '20:00',
    '2020-04-22'
),(
    2,
    3,
    1,
    4,
    '20:00',
    '20:30',
    '2020-04-22'
),(
    2,
    3,
    1,
    4,
    '20:30',
    '21:00',
    '2020-04-22'
),(
    2,
    3,
    1,
    4,
    '21:00',
    '21:30',
    '2020-04-22'
),(
    2,
    3,
    1,
    4,
    '21:30',
    '22:00',
    '2020-04-22'
);
