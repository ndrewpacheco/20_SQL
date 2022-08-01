-- from the terminal run:
-- psql < medical.sql

DROP DATABASE IF EXISTS medical;


CREATE DATABASE medical;

\c medical
CREATE TABLE medical_centers (id SERIAL PRIMARY KEY,
                                                name TEXT NOT NULL);


CREATE TABLE doctors
  (id SERIAL PRIMARY KEY,
                     medical_centers_id INTEGER REFERENCES medical_centers ON DELETE CASCADE,
                                                                                     name TEXT NOT NULL);


CREATE TABLE diseases
  (id SERIAL PRIMARY KEY,
                     doctor_id INTEGER REFERENCES doctors ON DELETE CASCADE,
                                                                    name TEXT NOT NULL);


CREATE TABLE patients
  (id SERIAL PRIMARY KEY,
                     disease_id INTEGER REFERENCES diseases ON DELETE CASCADE,
                                                                      name TEXT NOT NULL);


CREATE TABLE patients_doctors
  (id SERIAL PRIMARY KEY,
                     doctor_id INTEGER REFERENCES doctors ON DELETE CASCADE,
                                                                    patient_id INTEGER REFERENCES patients ON DELETE CASCADE);


INSERT INTO medical_centers (name)
VALUES ('first center');


INSERT INTO doctors (name, medical_centers_id)
VALUES ('Dr. Smith',
        1), ('Dr. Jackson',
             1);


INSERT INTO diseases (name)
VALUES ('polio'), ('covid');


INSERT INTO patients (name, disease_id)
VALUES ('john',
        1), ('sally',
             2);


INSERT INTO patients_doctors (patient_id, doctor_id)
VALUES (2,
        1),(1,
            2);