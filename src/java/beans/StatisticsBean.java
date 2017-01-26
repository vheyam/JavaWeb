/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package beans;

import hibernate.util.HibernateUtil;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.ejb.Stateless;
import objects.StatisticsCountPatients;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Rolandas
 */
@Stateless
public class StatisticsBean {
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    private boolean addNewCountPatients(String date, int january, int february, int march, int april, int may, int june,
            int july, int august, int september, int october, int november, int december) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            StatisticsCountPatients p = new StatisticsCountPatients();
            p.setDate(date);
            p.setJanuary(january);
            p.setFebruary(february);
            p.setMarch(march);
            p.setApril(april);
            p.setMay(march);
            p.setJune(june);
            p.setJuly(july);
            p.setAugust(august);
            p.setSeptember(september);
            p.setOctober(october);
            p.setNovember(november);
            p.setDecember(december);
            
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
    
    private boolean updateCountPatients(int id, String date, int january, int february, int march, int april, int may, int june,
            int july, int august, int september, int october, int november, int december) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            StatisticsCountPatients stats = new StatisticsCountPatients();
            
            stats.setId(id);
            stats.setDate(date);
            stats.setJanuary(january);
            stats.setFebruary(february);
            stats.setMarch(march);
            stats.setApril(april);
            stats.setMay(may);
            stats.setJune(june);
            stats.setJuly(july);
            stats.setAugust(august);
            stats.setSeptember(september);
            stats.setOctober(october);
            stats.setNovember(november);
            stats.setDecember(december);
            
            session.update(stats);
            
            session.getTransaction().commit();
            
            session.flush();
            session.close();
            return true;
        } catch (HibernateException he) {
            he.printStackTrace();
            return false;
        }
    }
    
    public List getCountPatients() {
        List list = null;
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            Query q = session.createQuery("from StatisticsCountPatients");
            list = q.list();
            
            session.flush();
            session.close();
        } catch(HibernateException he) {
            he.printStackTrace();
        }
        return list;
    }
    // Format of date is yyyy (only year)
    public void checkEntry() throws ParseException {
        String date = "";
        int id = 0;
        int januaryCount = 0;
        int februaryCount = 0;
        int marchCount = 0;
        int aprilCount = 0;
        int mayCount = 0;
        int juneCount = 0;
        int julyCount = 0;
        int augustCount = 0;
        int septemberCount = 0;
        int octoberCount = 0;
        int novemberCount = 0;
        int decemberCount = 0;
        
        for(Object obj : getCountPatients()) {
            StatisticsCountPatients stat = (StatisticsCountPatients) obj;
            
            id = stat.getId();
            date = stat.getDate();
            januaryCount = stat.getJanuary();
            februaryCount = stat.getFebruary();
            marchCount = stat.getMarch();
            aprilCount = stat.getApril();
            mayCount = stat.getMay();
            juneCount = stat.getJune();
            julyCount = stat.getJuly();
            augustCount = stat.getAugust();
            septemberCount = stat.getSeptember();
            octoberCount = stat.getOctober();
            novemberCount = stat.getNovember();
            decemberCount = stat.getDecember();
        }
        
        Date dateNow = new Date();
        
        Date yearToCompare = new SimpleDateFormat("yyyy").parse(date);
        
        Calendar calNow = Calendar.getInstance();
        calNow.setTime(dateNow);
        Calendar calToCompare = Calendar.getInstance();
        calToCompare.setTime(yearToCompare);
        
        
        // Years are equal update entry
        if(calNow.get(Calendar.YEAR) == calToCompare.get(Calendar.YEAR)){
            System.out.println("Years are equal");
            // Check which month
            switch(calToCompare.get(Calendar.MONTH)) {
                case 0: 
                    System.out.println("January");
                    januaryCount++;
                    break;
                case 1:
                    System.out.println("February");
                    februaryCount++;
                    break;
                case 2: 
                    System.out.println("March");
                    marchCount++;
                    break;
                case 3: 
                    System.out.println("April");
                    aprilCount++;
                    break;
                case 4: 
                    System.out.println("May");
                    mayCount++;
                    break;
                case 5: 
                    System.out.println("June");
                    juneCount++;
                    break;
                case 6: 
                    System.out.println("July");
                    julyCount++;
                    break;
                case 7: 
                    System.out.println("August");
                    augustCount++;
                    break;
                case 8: 
                    System.out.println("September");
                    septemberCount++;
                    break;
                case 9: 
                    System.out.println("October");
                    octoberCount++;
                    break;
                case 10: 
                    System.out.println("November");
                    novemberCount++;
                    break;
                case 11: 
                    System.out.println("December");
                    decemberCount++;
                    break;
            }
            
            // make an update to the database
            updateCountPatients(id, date, januaryCount, februaryCount, marchCount, aprilCount, mayCount, juneCount, julyCount,
                    augustCount, septemberCount, octoberCount, novemberCount, decemberCount);
        }
        // years not equal input new entry
        else{
            System.out.println("Years not equal");
            // This should happen only during new years.
            // That means the first count will be January.
            // Insert into database new date and count up January month.
            addNewCountPatients(String.valueOf(calNow.get(Calendar.YEAR)), 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        } 
    }
}
