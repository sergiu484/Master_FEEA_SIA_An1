package labStrat;

public class MetFactory {
    public IMetodaEstimareCost getMetodaEstimareCost(String metoda){
        IMetodaEstimareCost met = null;
        switch (metoda){
            case "cocomo":
                met = new Cocomo();
                break;
            case "abc":
                met = new Abc();
                break;
        }
        return met;
    }
}
