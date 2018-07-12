

public class Propeller {
    private int powerMax;
    private int powerAc;

    public Propeller(int power) throws Exception {
        if (power <= 0) throw new Exception();
        this.powerMax = power;
        powerAc = 0;
    }

    public int getPower() {
        return powerAc;
    }
    public void speedUp() {
        powerAc += 10;
        if (powerAc > powerMax) {
            powerAc = powerMax;
        }

    }

    public void slowDown() {
        if (powerAc > 0) {
            powerAc -= 10;
        }

    }


}
