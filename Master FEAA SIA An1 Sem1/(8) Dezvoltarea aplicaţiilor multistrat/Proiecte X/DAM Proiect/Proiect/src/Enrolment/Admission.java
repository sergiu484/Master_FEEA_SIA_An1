package Enrolment;

import Candidates.Candidate;
import Candidates.ReadConfirmation;
import Candidates.ReadEnrollmentForm;
import Jobs.AdmissionCriteria;
import Jobs.Job;
import Resume.ReadResume;
import Tests.ReadResults;

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