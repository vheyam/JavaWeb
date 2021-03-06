/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import hibernate.util.HibernateUtil;
import java.util.ArrayList;
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
    
    public boolean updateSchedule(int id, String date, int eightToNine, int nineToTen, int tenToEleven, int elevenToTwelve,
            int thirteenToFourteen, int fourteenToFifteen) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            Schedule s = new Schedule();
            s.setId(id);
            s.setDate(date);
            s.setEightToNine(eightToNine);
            s.setNineToTen(nineToTen);
            s.setTenToEleven(tenToEleven);
            s.setElevenToTwelve(elevenToTwelve);
            s.setThirteenToFourteen(thirteenToFourteen);
            s.setFourteenToFifteen(fourteenToFifteen);
            
            session.saveOrUpdate(s);
            
            session.getTransaction().commit();
            
            session.flush();
            session.close();
            return true;
        } catch (HibernateException he) {
            he.printStackTrace();
            return false;
        } 
    }
    
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
    
    public Schedule checkIfExist(String date) {
        Schedule schedule = new Schedule();
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            Query q = session.createQuery("from Schedule where date = :date");
            q.setParameter("date", date);
            
            schedule = (Schedule) q.uniqueResult();
            
            session.getTransaction().commit();

            session.flush();
            session.close();
        } catch(HibernateException he) {
            he.printStackTrace();
        }
        return schedule;
    }
    
    public ArrayList<String> getEmptySlotsForSpecificDay(String date) {
        ArrayList<String> list = new ArrayList<String>();
         
        // entry exist in database
        if (checkIfExist(date) != null) {       
            for (Object obj : getScheduleList()) {
                Schedule s = (Schedule) obj;
                
                if(s.getDate().equals(date)) {
                    
                    if(s.getEightToNine() == 0) {
                        list.add("8-9");
                    }
                    if(s.getNineToTen() == 0) {
                        list.add("9-10");
                    }
                    if(s.getTenToEleven() == 0) {
                        list.add("10-11");
                    }
                    if(s.getElevenToTwelve() == 0) {
                        list.add("11-12");
                    }
                    if(s.getThirteenToFourteen() == 0) {
                        list.add("13-14");
                    }
                    if(s.getFourteenToFifteen() == 0) {
                        list.add("14-15");
                    }
                    
                    break;
                }
            }
        }
        // entry does not exist in database
        else if (!date.isEmpty()){
            list.add("8-9");
            list.add("9-10");
            list.add("10-11");
            list.add("11-12");
            list.add("13-14");
            list.add("14-15");    
        }
        
        return list;   
    }
}
