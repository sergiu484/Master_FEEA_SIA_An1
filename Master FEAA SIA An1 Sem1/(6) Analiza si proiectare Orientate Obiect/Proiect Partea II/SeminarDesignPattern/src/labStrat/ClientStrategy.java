package labStrat;

public class ClientStrategy {
    public static void main(String[] args){
//        MetodaEstimare met = MetodaEstimare.ABC;
        MetodaEstimare met = MetodaEstimare.COCOMO;
        Proiect p = new Proiect();

        switch (met){
            case COCOMO:
                p.setMetodaEstimare(new Cocomo());
                break;
            case ABC:
                p.setMetodaEstimare(new Abc());
                break;
        }
        p.estimeazaCost();
    }
}
