package Proiect;

import Proiect.Candidates.Candidate;
import Proiect.Candidates.Candidates;
import Proiect.Candidates.EnrollmentForm;
import Proiect.Jobs.AdmissionCriteria;
import Proiect.Jobs.Companies;
import Proiect.Jobs.Job;
import Proiect.Tests.Grade;
import Proiect.Tests.ScheduleTest;
import Proiect.Tests.Subject;
import Proiect.Tests.Test;

import java.sql.Time;
import java.util.Date;

public class Proiect {
    public static void main(String[] args) {
        Candidate CA = new Candidate();
        CA.setName("Ionescu Mihai");
        CA.setAdress("Adresa: Str.Florilor nr.10");
        CA.setID(1);
        CA.setConfirmation(True);
//        C.setM_EnrollmentForm(True);
//        C.setM_Grade(Grade);

        EnrollmentForm E = new EnrollmentForm();
//        E.setDate(Date);
//        E.setJob("Software Developer");
        E.setNO(5);
//        E.setM_Candidate(Candidate);

        AdmissionCriteria AC = new AdmissionCriteria();

        AC.setCriteria("student");
        AC.setID(1);
//        AC.setm_Companies(Companies);

        Companies CO = new Companies();
        CO.setID(1);
        CO.setName("Endava");
//        CO.setM_Job("Software Developer")
//        CO.setM_AdmissionCriteria(AdmissionCriteria);

        Job J = new Job();
        J.setDescription("Java");
        J.setName("Software Developer");
        J.setOptionID(1);

        Grade G = new Grade();
        G.setGradeValue(7.7f);

        ScheduleTest ST = new ScheduleTest();
//        ST.setDate(Date);
//        ST.setHour(Time);
        ST.setID(1);
//        ST.setM_Test(Test);

        Subject S = new Subject();
        S.setID(1);
        S.setPoints(13.3f);
//        S.setRequirement(String);
//        S.setType(String)

        Test T = new Test();
        T.setID(1);
        T.setName("First Test");
//        T.setType(String)
//        T.setM_Subject(Subject)
        T.setM_Grade(1);

//        System.out.println("Hello, World!");
    }
}
