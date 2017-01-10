/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import hibernate.util.HibernateUtil;
import javax.ejb.Stateless;
import objects.Patient;
import org.hibernate.HibernateException;
import org.hibernate.Session;

/**
 *
 * @author Rolandas
 */
@Stateless
public class PatientBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    public void addPatient(String firstname, String lastname, String phone, String email,
            String birthdate, String symptoms, String matter) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            Patient p = new Patient();
            p.setFirstname(firstname);
            p.setLastname(lastname);
            p.setPhone(phone);
            p.setEmail(email);
            p.setBirthdate(birthdate);
            p.setSymptoms(symptoms);
            p.setMatter(matter);
            
            session.save(p);
            
            session.getTransaction().commit();
        } catch (HibernateException he) {
            he.printStackTrace();
        }
    }
}
