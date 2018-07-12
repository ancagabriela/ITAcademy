import java.sql.SQLOutput;
import java.lang.String;
import java.util.ArrayList;
import java.util.List;


public class Main {

    public static void main(String[] args) throws Exception {


        Rocket rocket1 = null;
        Rocket rocket2 = null;
        try {
            rocket1 = new Rocket("32WESSDS");
            rocket1.addPropeller(10);
            rocket1.addPropeller(30);
            rocket1.addPropeller(80);

            rocket2 = new Rocket("LDSFJA32");
            rocket2.addPropeller(30);
            rocket2.addPropeller(40);
            rocket2.addPropeller(50);
            rocket2.addPropeller(50);
            rocket2.addPropeller(30);
            rocket2.addPropeller(10);
        } catch (Exception e) {
            e.printStackTrace();
        }
        int cont = 1;
        int cantidad = rocket1.getPropellers().size();

        System.out.print(rocket1.getId() + ": ");
        for (Propeller eso : rocket1.getPropellers()) {
            if (cont < cantidad) {
                System.out.print(eso.getPower() + ",");
            } else {
                System.out.print(eso.getPower());
            }
            cont++;
        }

        int cont2 = 1;
        int cantidad2 = rocket2.getPropellers().size();

        System.out.print("\n"+ rocket2.getId() + ": ");
        for (Propeller ese : rocket2.getPropellers()) {
            if (cont2 < cantidad2) {
                System.out.print(ese.getPower() + ",");
            } else {
                System.out.print(ese.getPower());
            }
            cont2++;
        }
    }
}

