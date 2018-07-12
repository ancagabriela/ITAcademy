import java.lang.Exception;
import java.util.ArrayList;
import java.util.List;

public class Rocket {
    private String id;
    private List<Propeller> propellers = new ArrayList<>();

    public Rocket(String id) throws Exception {
        if (id.equals("")) throw new Exception();
        this.id = id;

    }

    public void addPropeller(int power) throws  Exception{
        Propeller p1 = new Propeller(power);
        propellers.add(p1);
    }

    public int actualSpeed(){
        int sum = 0;
        for (int i = 0; i < propellers.size(); i++) {
            sum += propellers.get(i).getPower();
        }
        return sum;
    }

    public List<Propeller> getPropellers() {
        return propellers;
    }

    public String getId() {
        return id;
    }


    public void speedUp() {
        for (Propeller prop: propellers) {
            prop.speedUp();
        }
    }
    public void slowDown() {
        for (Propeller prop3 : propellers) {
            prop3.slowDown();
        }
    }
}





