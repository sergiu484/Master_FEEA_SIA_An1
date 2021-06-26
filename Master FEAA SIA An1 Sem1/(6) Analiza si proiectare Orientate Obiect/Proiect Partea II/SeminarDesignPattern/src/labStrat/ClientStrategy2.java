package labStrat;

public class ClientStrategy2 {
    public static void main(String[] args){
        MetFactory metFactory = new MetFactory();
        IMetodaEstimareCost metoda = metFactory.getMetodaEstimareCost("abc");
        Proiect p = new Proiect();
        p.setMetodaEstimare(metoda);
        p.estimeazaCost();
    }
}
