package Jobs;

public class Companies
{
  private Integer ID;
  private String Name;
  public Job m_Job;
  public AdmissionCriteria m_AdmissionCriteria;
  
  public Integer getID()
  {
    return this.ID;
  }
  
  public void setID(Integer iD)
  {
    this.ID = iD;
  }
  
  public String getName()
  {
    return this.Name;
  }
  
  public void setName(String name)
  {
    this.Name = name;
  }
  
  public Job getM_Job()
  {
    return this.m_Job;
  }
  
  public void setM_Job(Job m_Job)
  {
    this.m_Job = m_Job;
  }
  
  public AdmissionCriteria getM_AdmissionCriteria()
  {
    return this.m_AdmissionCriteria;
  }
  
  public void setM_AdmissionCriteria(AdmissionCriteria m_AdmissionCriteria)
  {
    this.m_AdmissionCriteria = m_AdmissionCriteria;
  }
  
  public void finalize()
    throws Throwable
  {}
}