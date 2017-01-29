/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package servlets;

import beans.PatientBean;
import beans.ScheduleBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import objects.Patient;
import objects.Schedule;

/**
 *
 * @author Rolandas
 */
public class ScheduleNewPatientServlet extends HttpServlet {
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String value = request.getParameter("date");
        System.out.println("THE VALUE oF THE DAMN THIS: " + value);
        
        PatientBean pb = new PatientBean();
        
        ArrayList<Patient> notScheduledUrgent = new ArrayList<Patient>();
        ArrayList<Patient> notScheduledNotUrgent = new ArrayList<Patient>();
        for (Object obj : pb.getPatientList()) {
            Patient p = (Patient) obj;
            // Not scheduled
            if (!p.getIsScheduled()) {
                // add to list urgent patients
                if (p.getMatter().equals("Urgent")) {
                    notScheduledUrgent.add(p);
                }
                // add to list not urgent patients
                else if (p.getMatter().equals("Not urgent")){
                    notScheduledNotUrgent.add(p);
                }
            }
        }
        
        boolean isEmpty = false;
        int idToAdd = 0;
        // check if list is not empty
        if (!notScheduledUrgent.isEmpty()) {
            idToAdd = notScheduledUrgent.get(0).getId();
        }
        // check if list is not empty
        else if (!notScheduledNotUrgent.isEmpty()) {
            idToAdd = notScheduledNotUrgent.get(0).getId();
        }
        // Both lists are empty.
        else {
            isEmpty = true;
        }
        
        
        ScheduleBean sb = new ScheduleBean();
        List eSlotList = sb.getEmptySlotsForSpecificDay(value);
        // Check if patient lists are not empty
        if (isEmpty == false) {
            // if size is 6 that means entry is not in database
            if(eSlotList.size() == 6) {
                String slotToFill = eSlotList.get(0).toString();
                
                switch(slotToFill) {
                    case "8-9":
                        System.out.println("THE EMPTY SLOT IS this: 8-9" );
                        sb.addSchedule(value, idToAdd, 0, 0, 0, 0, 0);
                        break;
                    case "9-10":
                        System.out.println("THE EMPTY SLOT IS this: 9-10");
                        sb.addSchedule(value, 0, idToAdd, 0, 0, 0, 0);
                        break;
                    case "10-11":
                        System.out.println("THE EMPTY SLOT IS this: 10-11");
                        sb.addSchedule(value, 0, 0, idToAdd, 0, 0, 0);
                        break;
                    case "11-12":
                        System.out.println("THE EMPTY SLOT IS this: 11-12");
                        sb.addSchedule(value, 0, 0, 0, idToAdd, 0, 0);
                        break;
                    case "13-14":
                        System.out.println("THE EMPTY SLOT IS this: 13-14");
                        sb.addSchedule(value, 0, 0, 0, 0, idToAdd, 0);
                        break;
                    case "14-15":
                        System.out.println("THE EMPTY SLOT IS this: 14-15");
                        sb.addSchedule(value, 0, 0, 0, 0, 0, idToAdd);
                        break;
                }
                request.setAttribute("message", "Patient has been scheduled");
                pb.updatePatientData(idToAdd, true);
            }
            // List is not empty and it is in database
            else if (!eSlotList.isEmpty()) {
                String slotToFill = eSlotList.get(0).toString();
                for (Object obj : sb.getScheduleList()) {
                    Schedule s = (Schedule) obj;
                    if (s.getDate().equals(value)) {
                        switch(slotToFill) {
                            case "8-9":
                                System.out.println("THE EMPTY SLOT IS this: 8-9" );
                                sb.updateSchedule(s.getId(), value, idToAdd, s.getNineToTen(), s.getTenToEleven(),
                                        s.getElevenToTwelve(), s.getThirteenToFourteen(), s.getFourteenToFifteen());
                                break;
                            case "9-10":
                                System.out.println("THE EMPTY SLOT IS this: 9-10");
                                sb.updateSchedule(s.getId(), value, s.getEightToNine(), idToAdd, s.getTenToEleven(),
                                        s.getElevenToTwelve(), s.getThirteenToFourteen(), s.getFourteenToFifteen());
                                break;
                            case "10-11":
                                System.out.println("THE EMPTY SLOT IS this: 10-11");
                                sb.updateSchedule(s.getId(), value, s.getEightToNine(), s.getNineToTen(), idToAdd,
                                        s.getElevenToTwelve(), s.getThirteenToFourteen(), s.getFourteenToFifteen());
                                break;
                            case "11-12":
                                System.out.println("THE EMPTY SLOT IS this: 11-12");
                                sb.updateSchedule(s.getId(), value, s.getEightToNine(), s.getNineToTen(), s.getTenToEleven(),
                                        idToAdd, s.getThirteenToFourteen(), s.getFourteenToFifteen());
                                break;
                            case "13-14":
                                System.out.println("THE EMPTY SLOT IS this: 13-14");
                                sb.updateSchedule(s.getId(), value, s.getEightToNine(), s.getNineToTen(), s.getTenToEleven(),
                                        s.getElevenToTwelve(), idToAdd, s.getFourteenToFifteen());
                                break;
                            case "14-15":
                                System.out.println("THE EMPTY SLOT IS this: 14-15");
                                sb.updateSchedule(s.getId(), value, s.getEightToNine(), s.getNineToTen(), s.getTenToEleven(),
                                        s.getElevenToTwelve(), s.getThirteenToFourteen(), idToAdd);
                                break;
                        }
                        request.setAttribute("message", "Patient has been scheduled");
                        pb.updatePatientData(idToAdd, true);
                        break;
                    }
                }
            }
            // List is empty, no available slots for this specific date
            else {
                //TO DO:
                request.setAttribute("errorMessage", "Patient was not scheduled, try again");
            }
        }
        else {
            request.setAttribute("errorMessage", "All patients are scheduled, try again later");
        }
  
        RequestDispatcher rd = request.getRequestDispatcher("schedulePatient.jsp");
        rd.forward(request, response);
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
}
