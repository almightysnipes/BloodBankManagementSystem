create database blood_bank;
use blood_bank;

create table bloodDonor (
DONOR_ID numeric (7, 0),
DONOR_NAME varchar(40),
BIRTH_DATE varchar(20),
GENDER varchar(12),
AGE integer,
PHONE_NUMBER numeric(10, 0),
EMAIL varchar(40),
ADDRESS varchar(30),
CITY varchar(30),
STATE varchar(30),
ZIP_CODE numeric(5, 0),
BLOOD_TYPE varchar(30),
WEIGHT numeric(5, 0),
BODY_TEMP numeric(5, 0),
BLOOD_PRESSURE numeric(5, 0),
TRANSFUSION_TYPE varchar(30),
PRIMARY KEY (DONOR_ID));

create table bloodPatient (
PATIENT_ID numeric(7, 0),
PATIENT_NAME varchar(40),
BIRTH_DATE varchar(20),
GENDER varchar(12),
AGE integer,
PHONE_NUMBER numeric(10, 0),
EMAIL varchar(40),
ADDRESS varchar(30),
CITY varchar(30),
STATE varchar(30),
ZIP_CODE numeric(5, 0),
BLOOD_TYPE varchar(30),
WEIGHT numeric(5, 0),
BODY_TEMP numeric(5, 0),
BLOOD_PRESSURE numeric(5, 0),
TRANSFUSION_REQUEST_TYPE varchar(30),
PRIMARY KEY (PATIENT_ID));

create table bloodFacility (
FACILITY_ID numeric(7, 0),
FACILITY_NAME varchar(50),
FACILITY_ADDRESS varchar(50),
FACILITY_CONTACT numeric(10, 0),
DONOR_ID numeric(7, 0),
PATIENT_ID numeric(7, 0),
PRIMARY KEY (FACILITY_ID));

insert into bloodDonor values(1000001, 'Jackson Teller', '10-25-87', 'Male', 36, 2295557878, 'jtell@gmail.com', '4511 Forrest Lake Dr', 'Tifton', 'Georgia', 31793, 'O-Positive', 200, 95, 120, 'Minor');
insert into bloodDonor values(1000002, 'Marie Sinclair', '05-10-97', 'Female', 27, 2292101456, 'msinclair@gmail.com', '744 Wheatley St', 'Americus', 'Georgia', 31709, 'O-Positive', 140, 96, 80, 'Minor');
insert into bloodDonor values(1000003, 'Gregory Stahl', '02-16-55', 'Male', 69, 2292221111, 'gregorystahl@ymail.com', '248 W Doublegate Drive', 'Leesburg', 'Georgia', 31763, 'AB-Positive', 240, 94, 135, 'Major');
insert into bloodDonor values(1000004, 'Beaumont Livingston', '08-03-74', 'Male', 50, 2293336677, 'bliv@gmail.com', '307 18th Ave E', 'Cordele', 'Georgia', 31015, 'A-Positive', 190, 99, 129, 'Major');
insert into bloodDonor values(1000005, 'Clay Morrow', '07-14-62', 'Male', 62, 2290015463, 'cmorrow62@gmail.com', '1703 Gary Ave', 'Albany', 'Georgia', 31721, 'O-Positive', 280, 97, 130, 'Minor');

insert into bloodPatient values(2000001, 'Gemma Teller', '10-02-42', 'Female', 82, 2295416842, 'gtell@gmail.com', '2612 Hank Bostick Dr', 'Tifton', 'Georgia', 31794, 'O-Positive', 150, 94, 130, 'Minor');
insert into bloodPatient values(2000002, 'Susanne Crabgrass', '01-25-69', 'Female', 55, 2291232468, 'susanne.crabgrass@ymail.com', '420 Terrace NW', 'Cairo', 'Georgia', 39827, 'O-Positive', 160, 97, 70, 'Minor');
insert into bloodPatient values(2000003, 'Robbie Reyes', '05-30-98', 'Male', 26, 2296521175, 'rreyes98@gmail.com', '3703 Countryside Dr', 'Albany', 'Georgia', 31705, 'AB-Positive', 220, 95, 120, 'Major');
insert into bloodPatient values(2000004, 'Steve Rodgers', '04-25-92', 'Male', 32, 2292359116, 'srodgers@icloud.com', '114 Oakleaf Ln', 'Leesburg', 'Georgia', 31763, 'A-Positive', 240, 95, 82, 'Major');
insert into bloodPatient values(2000005, 'Jason Todd', '09-04-87', 'Male', 37, 2290124561, 'jtodd@gmail.com', '803 Est 14th Ave', 'Cordele', 'Georgia', 31015, 'O-Positive', 210, 95, 90, 'Minor');

insert into bloodFacility values(3000001, 'ImmunoTek Bio Centers', '300 S Slappey Blvd, Albany, GA 31701', 2293025709, 1000001, 2000001);
insert into bloodFacility values(3000002, 'OneBlood', '14815 U.S. Hwy #800, Thomasville, GA 31792', 2292289980, 1000002, 2000002);
insert into bloodFacility values(3000003, 'Octapharma Plasma', '1713 Norman Dr, Valdosta, GA 31601', 2295888731, 1000003, 2000003);
insert into bloodFacility values(3000004, 'BioLife Plasma', '4035 Watson Blvd, Warner Robins, GA 31093', 4789710720, 1000004, 2000004);
insert into bloodFacility values(3000005, 'CSL Plasma', '1331 Green St, Warner Robins, GA 31093', 4782366271, 1000005, 2000005);

Select * from bloodDonor;
Select * from bloodPatient;
Select * from bloodFacility;


