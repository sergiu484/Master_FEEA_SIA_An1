interface RevizorLucrare {
    void AfisareLucrare();
    void AfisareNota();
}
class StiinteEconomice implements RevizorLucrare {
    @Override
    public void AfisareLucrare() {
        System.out.println("StiinteEconomice");
    }
    @Override
    public void AfisareNota() {
        System.out.println("8");
    }
}
class StiintePolitice implements RevizorLucrare {
    @Override
    public void AfisareLucrare() {
        System.out.println("StiintePolitice");
    }
    @Override
    public void AfisareNota() {
        System.out.println("9");
    }
}
class Informatii {
    private RevizorLucrare stiintePolitice;
    private RevizorLucrare stiinteEconomice;
    public Informatii() {
        stiinteEconomice = new StiinteEconomice();
        stiintePolitice = new StiintePolitice();
    }
    public void PrezentareDateStiintePolitice()
    {
        stiintePolitice.AfisareLucrare();
        stiintePolitice.AfisareNota();
    }
    public void PrezentareDateStiinteEconomice()
    {
        stiinteEconomice.AfisareLucrare();
        stiinteEconomice.AfisareNota();
    }
}
public class Main {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
        Informatii info = new Informatii();
        info.PrezentareDateStiinteEconomice();
    }
}