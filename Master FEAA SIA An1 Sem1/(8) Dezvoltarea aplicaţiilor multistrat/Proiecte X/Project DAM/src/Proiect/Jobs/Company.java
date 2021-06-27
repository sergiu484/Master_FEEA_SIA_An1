package Proiect.Jobs;

import Proiect.Enrolment.ReadAdmissionResult;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;

public class Company {
    public ReadAdmissionResult readAdmissionResult;

    public void finalize()
            throws Throwable {
    }

    public void Add(Companies Companies) {
    }

    public void AddAdmissionCriteria(AdmissionCriteria AdmissionCriteria) {
        System.out.println("Criteria added succesfuly");
    }

    public void AddJobs(List<Job> Job) {
    }


    public AdmissionCriteria ReadAdmissionCriteria(Company Company) {
        return null;
    }

    public List<Job> ReadJobs(Companies Company) {
        List<Job> list = new ArrayList();
        try {
            Companies comp = new Companies();
            Company.getName();
            list.add(comp.getM_Job());
            System.out.println(comp.getM_Job());
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return list;
    }


    public AdmissionCriteria UpdateAdmissionCriteria(AdmissionCriteria AdmissionCriteria) {
        return null;
    }

    public Job UpdateJobs(Job Job) {
        return null;
    }

}