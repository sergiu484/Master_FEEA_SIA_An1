package Proiect.Candidates;


import Proiect.Enrolment.NotifyCandidate;
import Proiect.Jobs.Company;
import Proiect.Resume.UploadResume;
import Proiect.Tests.ReadTestSubject;

public class Candidates
{
  public Company readJobs;
  public ReadTestSubject readTestSubject;
  public UploadResume uploadResumes;
  public NotifyCandidate notifyCandidate;
    
  public void finalize()
    throws Throwable
  {}
  
  public void AddConfirmation(boolean Confirmation) {}
  
  public Confirmation ReadConfirmation(Candidate Confirmation)
  {
    return null;
  }
  
  public EnrollmentForm ReadEnrollmentForm(Candidate Candidate)
  {
    return null;
  }
}