package Tests;

import java.sql.Time;
import java.util.Date;

public class ScheduleTest
{
  private Date Date;
  private Time Hour;
  private Integer ID;
  public Test m_Test;
  
  public Date getDate()
  {
    return this.Date;
  }
  
  public void setDate(Date date)
  {
    this.Date = date;
  }
  
  public Time getHour()
  {
    return this.Hour;
  }
  
  public void setHour(Time hour)
  {
    this.Hour = hour;
  }
  
  public Integer getID()
  {
    return this.ID;
  }
  
  public void setID(Integer iD)
  {
    this.ID = iD;
  }
  
  public Test getM_Test()
  {
    return this.m_Test;
  }
  
  public void setM_Test(Test m_Test)
  {
    this.m_Test = m_Test;
  }
  
  public void finalize()
    throws Throwable
  {}
}
