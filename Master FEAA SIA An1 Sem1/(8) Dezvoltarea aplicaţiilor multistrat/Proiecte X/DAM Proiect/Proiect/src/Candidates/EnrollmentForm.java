package Candidates;

import java.util.Date;

import Jobs.Job;

public class EnrollmentForm
{
  private Date date;
  private Job Job;
  private Integer NO;
  public Candidate m_Candidate;
  
  public Date getDate()
  {
    return this.date;
  }
  
  public void setDate(Date date)
  {
    this.date = date;
  }
  
  public Job getJob()
  {
    return this.Job;
  }
  
  public void setJob(Job Job)
  {
    this.Job = Job;
  }
  
  public Integer getNO()
  {
    return this.NO;
  }
  
  public void setNO(Integer nO)
  {
    this.NO = nO;
  }
  
  public Candidate getM_Candidate()
  {
    return this.m_Candidate;
  }
  
  public void setM_Candidate(Candidate m_Candidate)
  {
    this.m_Candidate = m_Candidate;
  }
  
  public void finalize()
    throws Throwable
  {}
}