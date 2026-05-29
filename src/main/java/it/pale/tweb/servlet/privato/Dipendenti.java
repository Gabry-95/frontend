package it.pale.tweb.servlet.privato;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Vector;

import it.pale.tweb.dao.beans.Istruttore_sala;
import it.pale.tweb.dao.beans.Istruttore_salaDAO;

/**
 * Servlet implementation class Dipendenti
 */
@WebServlet("/privato/dipendenti/Dipendenti")
public class Dipendenti extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dipendenti() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//lettura input
		String idPalestra= request.getParameter("idPalestra");
		int id= Integer.parseInt(idPalestra);
		
		//elaborazione
		Vector <Istruttore_sala> is = new  Vector <Istruttore_sala>();
		Istruttore_salaDAO isDAO = new Istruttore_salaDAO();
		
		is=isDAO.getAll();
		//output
		request.setAttribute("is", is);
		request.getRequestDispatcher("/WEB-INF/privato/dipendenti/dipendenti.jsp").forward(request, response);
	}

}
