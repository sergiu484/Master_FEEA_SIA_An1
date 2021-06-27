package Resume;

public class Resumes
  implements UploadResume, ReadResume, UpdateResume
{
  public void finalize()
    throws Throwable
  {}
  
  public Resume ReadResume(Integer NO)
  {
    return null;
  }
  
  public Resume UpdateResume(Resume Resume)
  {
    return null;
  }
  
  public void UploadResume(Resume Resume) {}
}