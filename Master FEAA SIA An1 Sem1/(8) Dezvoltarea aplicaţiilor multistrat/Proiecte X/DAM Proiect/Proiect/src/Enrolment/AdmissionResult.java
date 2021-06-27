package Enrolment;

import Candidates.Candidate;
import Jobs.Job;

public class AdmissionResult
{
  private boolean FinalResult;
  public Candidate m_Candidate;
  public Job m_Job;
  
  public void finalize()
    throws Throwable
  {}
}
