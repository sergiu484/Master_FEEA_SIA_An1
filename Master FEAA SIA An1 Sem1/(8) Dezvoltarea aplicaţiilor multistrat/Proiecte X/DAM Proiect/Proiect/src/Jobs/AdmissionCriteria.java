package Jobs;

public class AdmissionCriteria
{
  private String Criteria;
  private Integer ID;
  public Companies m_Companies;
  
  public String getCriteria()
  {
    return this.Criteria;
  }
  
  public void setCriteria(String criteria)
  {
    this.Criteria = criteria;
  }
  
  public Integer getID()
  {
    return this.ID;
  }
  
  public void setID(Integer iD)
  {
    this.ID = iD;
  }
  
  public Companies getm_Companies()
  {
    return this.m_Companies;
  }
  
  public void setm_Companies(Companies m_Companies)
  {
    this.m_Companies = m_Companies;
  }
  
  public void finalize()
    throws Throwable
  {}
}