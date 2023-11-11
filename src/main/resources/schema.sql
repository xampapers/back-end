CREATE TABLE MASTER_SUBJECT(
                               id INT PRIMARY KEY ,
                               name VARCHAR(100)
);

CREATE TABLE MASTER_MEDIUM(
                              id VARCHAR(10) PRIMARY KEY,
                              name VARCHAR(20)

);

CREATE TABLE MASTER_PAPER_TYPE(
                                  id INT PRIMARY KEY ,
                                  name VARCHAR(20)
);

CREATE TABLE AL_MATHS_BIO(
                             name VARCHAR(100),
                             subject_code INT,
                             exam_medium VARCHAR(10),
                             paper_type INT,
                             link VARCHAR(1000),
                             date VARCHAR(10),
                             examDate VARCHAR(20),
                             CONSTRAINT fk_subject_code FOREIGN KEY (subject_code) REFERENCES master_subject(id),
                             CONSTRAINT fk_exam_medium FOREIGN KEY (exam_medium) REFERENCES master_medium(id),
                             CONSTRAINT fk_paper_type FOREIGN KEY (paper_type) REFERENCES master_paper_type(id),
                             PRIMARY KEY (subject_code, exam_medium, paper_type)
)