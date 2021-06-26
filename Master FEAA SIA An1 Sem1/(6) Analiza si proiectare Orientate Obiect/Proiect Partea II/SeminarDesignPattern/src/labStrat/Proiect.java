package labStrat;

public class Proiect {
    private Double buget;
    private IMetodaEstimareCost metodaEstimare;
    private Double costEstimat;

    public void estimeazaCost(){
        this.costEstimat = this.metodaEstimare.estimeaza(this);
        System.out.println(this.costEstimat);
    }
    public void setBuget(double buget){
        this.buget = buget;
    }
    public Double getBuget(){
        return buget;
    }
    public void setMetodaEstimare(IMetodaEstimareCost met){
        this.metodaEstimare = met;
    }
    public IMetodaEstimareCost getMetodaEstimare() {
        return metodaEstimare;
    }
    public void setCostEstimat(Double costEstimat){
        this.costEstimat =costEstimat;
    }
    public Double getCostEstimat(){
        return costEstimat;
    }
}
