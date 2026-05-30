package it.pale.tweb.servlet.privato;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Vector;

import it.pale.tweb.dao.beans.Istruttore_sala;
import it.pale.tweb.dao.beans.Istruttore_salaDAO;
import it.pale.tweb.dao.beans.Palestra;

/**
 * Servlet implementation class Prova
 */
@WebServlet("/privato/Prova")
public class Prova extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Prova() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//lettura input
		HttpSession session=request.getSession();
		int id=(int) session.getAttribute("Palestra");
		Palestra p= new Palestra();
		p.setId(id);
	
		
		//elaborazione
		Vector <Istruttore_sala> is = new  Vector <Istruttore_sala>();
		Istruttore_salaDAO isDAO = new Istruttore_salaDAO();
		
		is=isDAO.elencoIS(p);
		//output
		request.setAttribute("is", is);
		request.getRequestDispatcher("/WEB-INF/privato/prova.jsp").forward(request, response);
	}

}
