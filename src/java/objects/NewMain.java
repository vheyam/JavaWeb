/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package objects;

import beans.PatientBean;
import beans.PersonBean;
import beans.ScheduleBean;


/**
 *
 * @author Rolandas
 */
public class NewMain {
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        //addCredentials("admin", "admin");
        
        PatientBean p = new PatientBean();
        
        p.addPatient("asdasd", "Asdasd", "123123", "asd@gmail.com", "133-12-31", "Headache", "Not urgent");

        PersonBean pp = new PersonBean();
        
        pp.addPerson("1asd", "fasd123", "123123", "zv@gmail.com", "admin", "admin", "admin");
        
        ScheduleBean ss = new ScheduleBean();
        
        ss.addSchedule(1, 2, 3, 0, 0, 6);
        
    }
    

}
