
interface ReducerePretArticol{
    abstract void AfisareValoare(int pret);
}

class AutorCuLucrariMultiplePublicate implements ReducerePretArticol{
    @Override
    public void AfisareValoare(int pret) {
        System.out.println(pret-0.15*pret);
    }
}

class AutorCuLucrariMultiplePlatite implements ReducerePretArticol{
    @Override
    public void AfisareValoare(int pret) {
        System.out.println(pret-0.3*pret);
    }
}

class AutorCuDoctorat implements ReducerePretArticol{
    @Override
    public void AfisareValoare(int pret) {
        System.out.println(pret-0.2*pret);
    }
}

public class Main {
    public static void main(String[] args) {
        ReducerePretArticol Reducere = new AutorCuDoctorat();
        Reducere.AfisareValoare(150);
    }
}