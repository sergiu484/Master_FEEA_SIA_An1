package Proiect.Enrolment;


import Proiect.Candidates.Candidate;
import Proiect.Candidates.ReadConfirmation;
import Proiect.Candidates.ReadEnrollmentForm;
import Proiect.Jobs.AdmissionCriteria;
import Proiect.Jobs.Job;
import Proiect.Resume.ReadResume;
import Proiect.Tests.ReadResults;

public class Admission
  implements AddAdmissionResult, ReadAdmissionResult, UpdateAdmissionResult, NotifyCandidate
{
  public AdmissionCriteria readAdmissionCriteria;
  public ReadResults readResults;
  public ReadResume readResume;
  public ReadEnrollmentForm readEnrollmentForm;
  public ReadConfirmation readConfirmation;
  
  public void finalize()
    throws Throwable
  {}
  
  public void AddAdmissionResult(AdmissionResult AdmissionResult) {}
  
  public void NotifyCandidate(String Notification) {}
  
  public AdmissionResult ReadAdmissionResult(Job Job)
  {
    return null;
  }
  
  public AdmissionResult UpdateAdmissionResult(Candidate Candidate)
  {
    return null;
  }
}