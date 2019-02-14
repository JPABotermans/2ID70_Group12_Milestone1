CREATE UNLOGGED TABLE Students(StudentID int, StudentName varchar(50), Address varchar(200), BirthyearStudent int, Gender char);
COPY Students(StudentID, StudentName, Address, BirthyearStudent, Gender) FROM '/home/student/Desktop/2ID70/sample_tables/tables/Students.table' DELIMITER ',' CSV HEADER;

CREATE UNLOGGED TABLE StudentRegistrationToDegrees(StudentRegistrationID int, StudentID int, DegreeId int, RegistrationYear int);
COPY StudentRegistrationToDegrees(StudentRegistrationID, StudentID, DegreeId, RegistrationYear) From '/home/student/Desktop/2ID70/sample_tables/tables/StudentRegistrationsToDegrees.table' DELIMITER ',' CSV HEADER;

CREATE UNLOGGED TABLE Degrees(DegreeID int, Dept varchar(50), DegreeDescription varchar(200), TotalECTS int);
COPY Degrees(DegreeID, Dept, DegreeDescription, TotalECTS) FROM '/home/student/Desktop/2ID70/sample_tables/tables/Degrees.table' DELIMITER ',' CSV HEADER;

CREATE UNLOGGED TABLE Teachers(TeacherID int, TeacherName varchar(50), Address varchar(200), BirthyearTeacher int, Gender char);
COPY Teachers(TeacherID, TeacherName, Address, BirthyearTeacher, Gender) FROM '/home/student/Desktop/2ID70/sample_tables/tables/Teachers.table' DELIMITER ',' CSV HEADER;

CREATE UNLOGGED TABLE Courses(CourseID int, CourseName varchar(50), CourseDescription varchar(200), DegreeID int, ECTS int);
COPY Courses(CourseID, CourseName, CourseDescription, DegreeID, ECTS) FROM '/home/student/Desktop/2ID70/sample_tables/tables/Courses.table' DELIMITER ',' CSV HEADER;

CREATE UNLOGGED TABLE CourseOffers(CourseOfferId int, CourseId int, Year int, Quartile int);
COPY CourseOffers(CourseOfferId, CourseId, Year, Quartile) FROM '/home/student/Desktop/2ID70/sample_tables/tables/CourseOffers.table' DELIMITER ',' CSV HEADER;

CREATE UNLOGGED TABLE TeacherAssignmentsToCourses(CourseOfferId int, TeacherId int);
COPY TeacherAssignmentsToCourses(CourseOfferId, TeacherId) FROM '/home/student/Desktop/2ID70/sample_tables/tables/TeacherAssignmentsToCourses.table' DELIMITER ',' CSV HEADER;

CREATE UNLOGGED TABLE StudentAssistants(CourseOfferId int, StudentRegistrationId int);
COPY StudentAssistants(CourseOfferId, StudentRegistrationId) FROM '/home/student/Desktop/2ID70/sample_tables/tables/StudentAssistants.table' DELIMITER ',' CSV HEADER;


CREATE UNLOGGED TABLE CourseRegistrations(CourseOfferId int, StudentRegistrationId int, Grade int);
COPY CourseRegistrations(CourseOfferId, StudentRegistrationId, Grade) FROM '/home/student/Desktop/2ID70/sample_tables/tables/CourseRegistrations.table' DELIMITER ',' CSV HEADER;

