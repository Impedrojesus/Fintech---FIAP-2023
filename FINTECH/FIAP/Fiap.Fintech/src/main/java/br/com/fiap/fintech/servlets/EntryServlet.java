package br.com.fiap.fintech.servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.fintech.dao.ExpenseDAO;
import br.com.fiap.fintech.dao.RevenueDAO;
import br.com.fiap.fintech.entities.Expense;
import br.com.fiap.fintech.entities.Revenue;
import br.com.fiap.fintech.factory.DAOFactory;

@WebServlet("/addEntryItem")
public class EntryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RevenueDAO revenueDAO;
	private ExpenseDAO expenseDAO;


	@Override
	public void init() throws ServletException {
		super.init();
		this.revenueDAO = DAOFactory.getRevenueDAO();
		this.expenseDAO = DAOFactory.getExpenseDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		String description = request.getParameter("desc");
		String isFixedEntry = request.getParameterValues("fixedEntry") == null ? "N" : "S";
		double value = Double.parseDouble(request.getParameter("value"));
		Calendar date = retrieveDateFromInput(request.getParameter("date"));

		String entryType = request.getParameter("entryType");  
		
		if (entryType.equals("revenue")) {
			Revenue newRevenue = new Revenue();
			newRevenue.setUserCode(1);
			newRevenue.setEntryValue(value);
			newRevenue.setEntryName(title);
			newRevenue.setEntryDate(date);
			newRevenue.setIsReceived(getIsReceivedFromEntryDate(date)); 
			newRevenue.setDescription(description);
			newRevenue.setIsFixedEntry(isFixedEntry); 
			newRevenue.setisRevenue(true);
			revenueDAO.insert(newRevenue);
			request.setAttribute("msg", "Receita cadastrada com sucesso!");	
			request.getRequestDispatcher("/revenue.jsp").forward(request, response);
		} else if (entryType.equals("expense")) {
			Expense newExpense = new Expense();
			newExpense.setUserCode(1);
			newExpense.setEntryValue(value);
			newExpense.setEntryName(title);
			newExpense.setEntryDate(date);
			newExpense.setWasPaid(getIsReceivedFromEntryDate(date)); 
			newExpense.setDescription(description);
			newExpense.setIsFixedEntry(isFixedEntry); 
			newExpense.setisRevenue(false);
			expenseDAO.insert(newExpense);
			request.setAttribute("msg", "Despesa cadastrada com sucesso!");	
			request.getRequestDispatcher("/expense.jsp").forward(request, response);
		}
	}

	private static Calendar retrieveDateFromInput(String inputDate) {
		SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd"); 
		SimpleDateFormat newFormat = new SimpleDateFormat("dd/MM/yy"); 
		
		Date transformedDate = null;
		try {
			Date dateToTransform = inputFormat.parse(inputDate);
			transformedDate = newFormat.parse(newFormat.format(dateToTransform));
		} catch (ParseException e1) {
			e1.printStackTrace();
		}

		Calendar calendar = Calendar.getInstance();
		calendar.setTime(transformedDate);
		return calendar;
	}
	
	private static String getIsReceivedFromEntryDate(Calendar calendar) {
		Date now = Calendar.getInstance().getTime();
		Date entryDate = calendar.getTime();
		
		String isReceived;		
		if (entryDate.before(now))
			isReceived = "S";
		else
			isReceived = "N";
		return isReceived;
	}
	
}
