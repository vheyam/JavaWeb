/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import hibernate.util.HibernateUtil;
import javax.ejb.Stateless;
import objects.Schedule;
import org.hibernate.HibernateException;
import org.hibernate.Session;

/**
 *
 * @author Rolandas
 */
@Stateless
public class ScheduleBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    public static void addSchedule(int eightToNine, int nineToTen, int tenToEleven, int elevenToTwelve,
            int thirteenToFourteen, int fourteenToFifteen) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            Schedule s = new Schedule();
            s.setEightToNine(eightToNine);
            s.setNineToTen(nineToTen);
            s.setTenToEleven(tenToEleven);
            s.setElevenToTwelve(elevenToTwelve);
            s.setThirteenToFourteen(thirteenToFourteen);
            s.setFourteenToFifteen(fourteenToFifteen);
            
            session.save(s);
            
            session.getTransaction().commit();
        } catch (HibernateException he) {
            he.printStackTrace();
        } 
    }
}
