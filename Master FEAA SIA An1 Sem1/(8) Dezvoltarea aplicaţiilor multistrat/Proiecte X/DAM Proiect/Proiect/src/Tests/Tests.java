package Tests;

import java.util.List;

import Candidates.Candidate;

public class Tests
  implements AddTest, AddTestSubject, UpdateTestSubjects, ReadTestSubject, AddScheduleTest, AddResults, ReadResults
{
  public void finalize()
    throws Throwable
  {}
  
  public void AddTest(Test Test) {}
  
  public void AddTestSubject(List<Subject> Subject) {}
  
  public void AddResults(Grade Grade) {}
  
  public void AddScheduleTest(ScheduleTest ScheduleTest) {}
  
  public List<Test> ReadTestSubject(Test Test)
  {
    return null;
  }
  
  public Grade ReadResults(Candidate Candidate)
  {
    return Candidate.getM_Grade();
  }
  
  public List<Subject> UpdateExamSubjects(Test Test)
  {
    return null;
  }
}


