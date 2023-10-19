
import java.io.File;
import java.util.Calendar;

public aspect Log {

    File file = new File("Log.txt");
    Calendar cal = Calendar.getInstance();

    pointcut success() : call(* effectiveLogIn(..) ) || call(* effectiveLogOut*(..) ) ;

    after() : success() {
    	 System.out.println("**** Succesful ****");
    }     
}