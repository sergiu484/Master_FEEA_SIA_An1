package Tests;

public class Subject
{
  private Integer ID;
  private float Points;
  private String Requirement;
  private String Type;
  
  public Integer getID()
  {
    return this.ID;
  }
  
  public void setID(Integer iD)
  {
    this.ID = iD;
  }
  
  public float getPoints()
  {
    return this.Points;
  }
  
  public void setPoints(float points)
  {
    this.Points = points;
  }
  
  public String getRequirement()
  {
    return this.Requirement;
  }
  
  public void setRequirement(String requirement)
  {
    this.Requirement = requirement;
  }
  
  public String getType()
  {
    return this.Type;
  }
  
  public void setType(String type)
  {
    this.Type = type;
  }
  
  public void finalize()
    throws Throwable
  {}
}
