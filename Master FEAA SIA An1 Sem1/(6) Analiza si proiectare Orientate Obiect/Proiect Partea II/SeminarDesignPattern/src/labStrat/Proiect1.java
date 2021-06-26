package labStrat;

public class Proiect1 {
    private Double buget;
    private MetodaEstimare metodaEstimare;
    private Double costEstimat;
    public void setBuget(Double buget){
        this.buget = buget;
    }
    public Double getBuget(){
        return buget;
    }
    public void setMetodaEstimare(MetodaEstimare met){
        this.metodaEstimare = met;
    }
    public MetodaEstimare getMetodaEstimare(){
        return metodaEstimare;
    }
    public Double getCostEstimat(){
        if(costEstimat == null){
            this.costEstimat = this.estimeazaCost();
        }
        System.out.println(this.costEstimat);
        return costEstimat;
    }
    public Double estimeazaCost(){
        Double cost = 0.0;
        switch(metodaEstimare){
            case COCOMO:
                cost = this.metCocomo();
                break;
            case ABC:
                cost = this.metAbc();
                break;
        }
        return cost;
    }
    public double metCocomo(){
        return 10.0;
    }
    public double metAbc(){
        return 20.0;
    }
}
