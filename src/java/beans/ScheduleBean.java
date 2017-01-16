/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import hibernate.util.HibernateUtil;
import java.util.List;
import javax.ejb.Stateless;
import objects.Schedule;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Rolandas
 */
@Stateless
public class ScheduleBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    public boolean addSchedule(String date, int eightToNine, int nineToTen, int tenToEleven, int elevenToTwelve,
            int thirteenToFourteen, int fourteenToFifteen) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            Schedule s = new Schedule();
            s.setDate(date);
            s.setEightToNine(eightToNine);
            s.setNineToTen(nineToTen);
            s.setTenToEleven(tenToEleven);
            s.setElevenToTwelve(elevenToTwelve);
            s.setThirteenToFourteen(thirteenToFourteen);
            s.setFourteenToFifteen(fourteenToFifteen);
            
            session.save(s);
            
            session.getTransaction().commit();
            
            session.flush();
            session.close();
            return true;
        } catch (HibernateException he) {
            he.printStackTrace();
            return false;
        } 
    }
    
    public List getScheduleList() {
        List list = null;
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            Query q = session.createQuery("from Schedule");
            list = q.list();
                 
            session.flush();
            session.close();
        } catch(HibernateException he) {
            he.printStackTrace();
        }
        return list;
    }
    // returns: if okay > true, if not okay > false.
    public boolean removeScheduleById(int id) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            Schedule schedule = new Schedule();
            schedule.setId(id);
            
            session.delete(schedule);
            
            session.getTransaction().commit();
            
            session.flush();
            session.close();
            return true;
        } catch(HibernateException he) {
            he.printStackTrace();
            return false;
        }
    }
}
