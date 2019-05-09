package waybill;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class OrdersProc
 */
@WebServlet("/WaybillProcServlet")
public class WaybillProc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public WaybillProc() {
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WaybillDAO wDao = null;
		WaybillDTO wDto = null;
		NoWaybillDTO nwDto = null;
		List<WaybillDTO> wayList = null;
		List<NoWaybillDTO> nwayList = null;
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher rd = null;
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
		int curPage = 0;
		int pagecount = 0;
		int pageNo = 0;
		String page = null;
		
		List<String> pageList = new ArrayList<String>();

		switch (action) {
		case "waybilllist":
			if (!request.getParameter("page").equals("")) {
				curPage = Integer.parseInt(request.getParameter("page"));
			}
			wDao = new WaybillDAO();
			wDto = new WaybillDTO();
			pagecount = wDao.getCount();
			if (pagecount == 0) // 데이터가 없을 때 대비
				pagecount = 1;
			pageNo = (int) Math.ceil(pagecount / 10.0);
			if (curPage > pageNo) // 경계선에 걸렸을 때 대비
				curPage--;
			session.setAttribute("currentMemberPage", curPage);
			// 리스트 페이지의 하단 페이지 데이터 만들어 주기
			page = "<a href=#>&laquo;</a>&nbsp;";
			pageList.add(page);
			for (int i = 1; i <= pageNo; i++) {
				page = "&nbsp;<a href=WaybillProcServlet?action=waybilllist&page=" + i + ">" + i + "</a>&nbsp;";
				pageList.add(page);
			}
			page = "&nbsp;<a href=#>&raquo;</a>";
			pageList.add(page);
			
			wayList = wDao.selectWaybillAll(curPage);	
			request.setAttribute("wayList", wayList);
			request.setAttribute("pageList", pageList);
			rd = request.getRequestDispatcher("shippinghistory.jsp");			
			rd.forward(request, response);
			break;
			
		case "shipping"	:
			String add = request.getParameter("add");
			String add1 = null;
			String add2 = null;
			String add3 = null;
			String add4 = null;
			wDao = new WaybillDAO();
			wDto = new WaybillDTO();
			switch(add) {
			case "A" :
				add1 = "서울경기";
				add2 = add1.substring(0,2);
				add3 = add1.substring(2,4);
				wayList = wDao.selectAdd2(add2, add3);
				break;
			case "B" :
				add1 = "대전세종충남";
				add2 = add1.substring(0,2);
				add3 = add1.substring(2,4);
				add4 = add1.substring(4,6);
				wayList = wDao.selectAdd3(add2, add3, add4);
				break;
			case "C" :
				add1 = "광주전라";
				add2 = add1.substring(0,2);
				add3 = add1.substring(2,4);
				wayList = wDao.selectAdd2(add2, add3);
				break;
			case "D" :
				add1 = "대구울산부산경상";
				add2 = add1.substring(0,2);
				add3 = add1.substring(2,4);
				add4 = add1.substring(4,6);
				String add5 = add1.substring(6,8);
				wayList = wDao.selectAdd4(add2, add3, add4, add5);
				break;
			case "E" :
				add1 = "강원";
				add2 = add1.substring(0,2);
				wayList = wDao.selectAdd1(add2);
				break;
			}
			
			System.out.println("add= " + add);
			request.setAttribute("wayList", wayList);
			rd = request.getRequestDispatcher("shipping.jsp");			
			rd.forward(request, response);
			break;
			
		case "nowaybilllist":
			wDao = new WaybillDAO();
			nwDto = new NoWaybillDTO();
			
			nwayList = wDao.selectNoWaybillAll();	
			request.setAttribute("nwayList", nwayList);
			rd = request.getRequestDispatcher("noshippinghistory.jsp");			
			rd.forward(request, response);
			break;	
			
		// 운송회사에 따른 운송내역
		case "buyinglist":
			String field = request.getParameter("field");
			wDao = new WaybillDAO();
			wDto = new WaybillDTO();
			
			List<WaybillDTO> carrierList = wDao.selectCarrierAll(field);			
			request.setAttribute("carrierList", carrierList);
			rd = request.getRequestDispatcher("carrier.jsp");
			rd.forward(request, response);
			break;
		}
	}

}