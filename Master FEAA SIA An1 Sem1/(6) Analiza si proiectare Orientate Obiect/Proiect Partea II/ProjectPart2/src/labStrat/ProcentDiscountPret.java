package labStrat;

public class ProcentDiscountPret implements PretArticol {
    private float procentaj;

    @Override
    public Factura getTotal(Factura Valoare) {
        return Valoare;
    }
}
