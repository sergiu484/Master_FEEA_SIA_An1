package Jobs;

public class Job
{
  private String Description;
  private String Name;
  private int OptionID;
  
  public String getDescription()
  {
    return this.Description;
  }
  
  public void setDescription(String description)
  {
    this.Description = description;
  }
  
  public String getName()
  {
    return this.Name;
  }
  
  public void setName(String string)
  {
    this.Name = string;
  }
  
  public int getOptionID()
  {
    return this.OptionID;
  }
  
  public void setOptionID(int optionID)
  {
    this.OptionID = optionID;
  }
  
  public void finalize()
    throws Throwable
  {}
}