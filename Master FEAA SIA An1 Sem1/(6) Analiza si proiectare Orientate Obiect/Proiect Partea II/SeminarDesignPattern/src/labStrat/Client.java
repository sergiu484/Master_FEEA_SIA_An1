package labStrat;

public class Client {
    public static void main(String[] args){
        Proiect1 p = new Proiect1();
        p.setMetodaEstimare(MetodaEstimare.COCOMO);
        p.getCostEstimat();
    }
}
