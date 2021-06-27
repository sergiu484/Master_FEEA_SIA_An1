package Enrolment;

import Jobs.Job;

public abstract interface ReadAdmissionResult
{
  public abstract AdmissionResult ReadAdmissionResult(Job paramJob);
}