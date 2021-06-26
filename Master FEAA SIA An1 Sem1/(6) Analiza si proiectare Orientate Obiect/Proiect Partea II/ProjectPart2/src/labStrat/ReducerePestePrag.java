package labStrat;

import org.omg.CORBA.portable.ValueOutputStream;

public class ReducerePestePrag implements PretArticol{
    private Factura discount;
    private Factura pret;
    public Factura getTotal(Factura Valoare) {
        return Valoare;
    }
}
