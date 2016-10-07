package action;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class talkative_scale
 */
public class talkative_scale extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public talkative_scale() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		if (request.getParameter("weight") != null) {

			float weight = Float.parseFloat(request.getParameter("weight"));

			File file = new File("weight.txt");
			file.createNewFile();
			FileWriter fw = new FileWriter(file);
			fw.write(String.valueOf(weight));
			fw.close();
			
			File fileDefaultWeight = new File("default_weight.txt");
			
			FileReader fr = new FileReader(fileDefaultWeight);
			char [] arrayOfNumWeight = new char[50];
			fr.read(arrayOfNumWeight);
			fr.close();
			
			String str_weight = String.valueOf(arrayOfNumWeight);
			request.setAttribute("defaultWeight", str_weight);
			request.getRequestDispatcher("/api/default_weight.jsp").forward(request, response);
		
		} else {
			File file=new File("weight.txt");
			
			FileReader fr = new FileReader(file);
			char [] arrayOfNumWeight = new char[50];
			fr.read(arrayOfNumWeight);
			fr.close();
			
			String str_weight = String.valueOf(arrayOfNumWeight);
			float weight = Float.parseFloat(str_weight);
			
			request.setAttribute("weight", weight);
			request.getRequestDispatcher("/index.jsp").forward(request,
					response);
		}
	}

}
