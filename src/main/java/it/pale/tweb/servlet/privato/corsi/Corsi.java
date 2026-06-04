package it.pale.tweb.servlet.privato.corsi;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import it.pale.tweb.dao.beans.Corso;
import it.pale.tweb.dao.beans.CorsoDAO;

/**
 * Servlet implementation class Corsi
 */
@WebServlet("/privato/corsi/Corsi")
public class Corsi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Corsi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//stabiliamo una sessione o ne prendiamo una già attiva
//		HttpSession session= request.getSession();
//		//creiamo una variabile id contenuta dal attributo palestra recuperato dalla sessione (palestra=1)
//		int idPalestra= (int) session.getAttribute("Palestra");
		
		//1. lettura input
		String ids=request.getParameter("id");
		
		//2. elaborazione
		int id= -1;
		id=Integer.parseInt(ids);
		
		Corso corso= new Corso();
		corso.setId(id);
		CorsoDAO corsoDAO= new CorsoDAO();
		corsoDAO.elimina(corso);
		//3. gestione output: non genero output
		
		//4. lettura output
		response.sendRedirect("RichiediCorsi");
		
//		//1. lettura input, leggiamo solo i dati che vogliamo mostrare nella view
//				String idCorsos= request.getParameter("id");
//				String nome=request.getParameter("nome");
//				String costoS=request.getParameter("corso");
//				String tipo=request.getParameter("tipo");
//				//per la palestra è scontato a quale ci stiamo riferendo, è quella della sessione
//				//2. elaborazione
//				int idCorso=Integer.parseInt(idCorsos);
//				int costo =Integer.parseInt(costoS);
//
//				Corso corso= new Corso();
//				CorsoDAO corsoDAO= new CorsoDAO();
//
//				corso.setId(idCorso);
//				corso.setNome(nome);
//				corso.setCosto(costo);
//				corso.setTipo(tipo);
//
//				boolean esito=corsoDAO.salva(corso);
////				request.setAttribute("Palestra", p);
//				if(esito) {
//					request.getRequestDispatcher("/WEB-INF/privato/corsi/corsi.jsp").forward(request, response);
//				} else {
//					request.getRequestDispatcher("/WEB-INF/errore3.jsp").forward(request, response);
//				}

		
	}

}
