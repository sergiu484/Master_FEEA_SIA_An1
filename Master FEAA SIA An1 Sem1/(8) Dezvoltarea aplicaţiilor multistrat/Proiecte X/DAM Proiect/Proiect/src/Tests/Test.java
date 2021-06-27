package Tests;

public class Test
{
  private Integer ID;
  private String Name;
  private String Type;
  public Subject m_Subject;
  public int m_Grade;
  
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
  
  public String getType()
  {
    return this.Type;
  }
  
  public void setType(String type)
  {
    this.Type = type;
  }
  
  public Subject getM_Subject()
  {
    return this.m_Subject;
  }
  
  public void setM_Subject(Subject m_Subject)
  {
    this.m_Subject = m_Subject;
  }
  
  public int getM_Grade()
  {
    return this.m_Grade;
  }
  
  public void setM_Grade(int i)
  {
    this.m_Grade = i;
  }
  
  public void finalize()
    throws Throwable
  {}
}