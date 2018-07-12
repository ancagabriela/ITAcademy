

public class Propeller {
    private int power;

    public Propeller(int power) throws Exception {
        if (power <= 0) throw new Exception();
        this.power = power;
    }

    public int getPower() {
        return power;
    }


}
