package Resume;

import java.util.Date;

public class Resume
{
  private Date Date;
  private Integer NO;
  private String Type;
  
  public Date getDate()
  {
    return this.Date;
  }
  
  public void setDate(Date date)
  {
    this.Date = date;
  }
  
  public Integer getNO()
  {
    return this.NO;
  }
  
  public void setNO(Integer nO)
  {
    this.NO = nO;
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
