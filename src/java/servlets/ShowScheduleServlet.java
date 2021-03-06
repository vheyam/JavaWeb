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
import java.text.SimpleDateFormat;
import java.util.Date;
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
public class ShowScheduleServlet extends HttpServlet {
    
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
        
        String date = request.getParameter("date");
        
        Date dNow = new Date( );
        SimpleDateFormat ft = new SimpleDateFormat ("MM/dd/yyyy");
        request.setAttribute("date", ft.format(dNow));
        int eightToNine = 0;
        int nineToTen = 0;
        int tenToEleven = 0;
        int elevenToTwelve = 0;
        int thirteenToFourteen = 0;
        int fourteenToFifteen = 0;
        
        ScheduleBean pb = new ScheduleBean();
        
        for (Object obj : pb.getScheduleList()) {
            Schedule s = (Schedule) obj;
            if (date != null){
                request.setAttribute("date", date);
                if (date.equals(s.getDate())) {
                    eightToNine = s.getEightToNine();
                    nineToTen = s.getNineToTen();
                    tenToEleven = s.getTenToEleven();
                    elevenToTwelve = s.getElevenToTwelve();
                    thirteenToFourteen = s.getThirteenToFourteen();
                    fourteenToFifteen = s.getFourteenToFifteen();
                    break;
                }
            }
            else {
                if (ft.format(dNow).equals(s.getDate())) {
                    eightToNine = s.getEightToNine();
                    nineToTen = s.getNineToTen();
                    tenToEleven = s.getTenToEleven();
                    elevenToTwelve = s.getElevenToTwelve();
                    thirteenToFourteen = s.getThirteenToFourteen();
                    fourteenToFifteen = s.getFourteenToFifteen();
                    break;
                }
                
            }
        }
        
        PatientBean pp = new PatientBean();
        
        check(eightToNine, request, pp, "eightToNine");
        check(nineToTen, request, pp, "nineToTen");
        check(tenToEleven, request, pp, "tenToEleven");
        check(elevenToTwelve, request, pp, "elevenToTwelve");
        check(thirteenToFourteen, request, pp, "thirteenToFourteen");
        check(fourteenToFifteen, request, pp, "fourteenToFifteen");
        
        RequestDispatcher rd = request.getRequestDispatcher("showSchedule.jsp");
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
    
    public void check(int timeSlot, HttpServletRequest request, PatientBean pp, String attributeName) {
        Patient patient = pp.getPatientDataFromId(timeSlot);
        if (timeSlot !=0) {
            request.setAttribute(attributeName, patient.getFirstname() + " " + patient.getLastname());
        }
        else {
            request.setAttribute(attributeName, timeSlot);
        }
    }
}
