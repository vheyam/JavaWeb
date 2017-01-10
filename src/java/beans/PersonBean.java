/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import hibernate.util.HibernateUtil;
import java.util.List;
import javax.ejb.Stateless;
import objects.Person;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Rolandas
 */
@Stateless
public class PersonBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    public void addPerson(String firstname, String lastname, String phone, String email, String privilege,
            String username, String password) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            Person p = new Person();
            p.setUsername(username);
            p.setPassword(password);
            p.setFirstname(firstname);
            p.setLastname(lastname);
            p.setPhone(phone);
            p.setEmail(email);
            p.setPrivilege(privilege);
   
            session.save(p);
            
            session.getTransaction().commit();
        } catch (HibernateException he) {
            he.printStackTrace();
        }
    }
    
    public List getPersonList() {
        List list = null;
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            Query q = session.createQuery("from Person");
            list = q.list();
                 
        } catch(Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
