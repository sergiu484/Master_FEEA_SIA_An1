package Candidates;

import java.io.PrintStream;

import Tests.Grade;

public class Candidate
{
  private String Adress;
  private boolean Confirmation;
  private Integer ID;
  private String Name;
  public EnrollmentForm m_EnrollmentForm;
  public Grade m_Grade;
  
  public String getAdress()
  {
    return this.Adress;
  }
  
  public void setAdress(String adress)
  {
    this.Adress = adress;
  }
  
  public boolean isConfirmation()
  {
    return this.Confirmation;
  }
  
  public void setConfirmation(boolean confirmation)
  {
    this.Confirmation = confirmation;
  }
  
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
  
  public EnrollmentForm getM_EnrollmentForm()
  {
    return this.m_EnrollmentForm;
  }
  
  public void setM_EnrollmentForm(EnrollmentForm m_EnrollmentForm)
  {
    this.m_EnrollmentForm = m_EnrollmentForm;
  }
  
  public Grade getM_Grade()
  {
    return this.m_Grade;
  }
  
  public void setM_Grade(Grade m_Grade)
  {
    this.m_Grade = m_Grade;
  }
  
  public void FillEnrollmentForm(EnrollmentForm enrollmentform)
  {
    System.out.println("Enrollment form succesfully submitted!");
  }
  
  public void finalize()
    throws Throwable
  {}
}