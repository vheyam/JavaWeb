/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import hibernate.util.HibernateUtil;
import java.util.List;
import javax.ejb.Stateless;
import objects.Patient;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Rolandas
 */
@Stateless
public class PatientBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    public boolean addPatient(String firstname, String lastname, String street, String postcode, String ort, String phone, String email,
            String birthdate, String symptoms, String bloodgroup,String weight, String height, String matter) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            Patient p = new Patient();
            p.setFirstname(firstname);
            p.setLastname(lastname);
            p.setStreet(street);
            p.setPostcode(postcode);
            p.setOrt(ort);
            p.setPhone(phone);
            p.setEmail(email);
            p.setBirthdate(birthdate);
            p.setSymptoms(symptoms);
            p.setBloodgroup(bloodgroup);
            p.setWeight(weight);
            p.setHeight(height);
            p.setMatter(matter);
            p.setIsScheduled(false);
            
            session.save(p);
            
            session.getTransaction().commit();

            session.flush();
            session.close();
            return true;
        } catch (HibernateException he) {
            he.printStackTrace();
            return false;
        }
    }
    
    public List getPatientList() {
        List list = null;
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            Query q = session.createQuery("from Patient");
            list = q.list();
            
            session.flush();
            session.close();
        } catch(HibernateException he) {
            he.printStackTrace();
        }
        return list;
    }
    
    // returns: if okay > true, if not okay > false.
    public boolean removePatientById(int id) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            Patient patient = new Patient();
            patient.setId(id);
            
            session.delete(patient);
            
            session.getTransaction().commit();
            
            session.flush();
            session.close();
            return true;
        } catch(HibernateException he) {
            he.printStackTrace();
            return false;
        }
    }
    
    public Patient getPatientDataFromId(int id) {
        Patient patient = new Patient();
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            patient = (Patient) session.get(Patient.class, id);
  
            session.getTransaction().commit();
            
            session.flush();
            session.close();
        } catch(HibernateException he) {
            he.printStackTrace();
        }
        return patient;
    }
    
        public Patient updatePatientData(int id, boolean isScheduled) {
        Patient patient = new Patient();
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            patient = (Patient) session.load(Patient.class, id);
  
            patient.setIsScheduled(true);
            session.update(patient);
            session.getTransaction().commit();
            
            session.flush();
            session.close();
        } catch(HibernateException he) {
            he.printStackTrace();
        }
        return patient;
    }
    
}
