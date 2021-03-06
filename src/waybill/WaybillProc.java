package waybill;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import product.OrdersDAO;
import product.OrdersDTO;

/**
 * Servlet implementation class OrdersProc
 */
@WebServlet("/WaybillProcServlet")
public class WaybillProc extends HttpServlet {
	private static final Logger LOG = LoggerFactory.getLogger(WaybillProc.class);
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
		OrdersDAO oDao = null;
		List<OrdersDTO> orderAll = null;
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
		String date = null;
		String date1 = null;
		String date2 = null;
		int shiptotal = 0;

		List<String> pageList = new ArrayList<String>();
		
		String cookieId = null;
		
		// 세션이 만료되었으면 다시 로그인하게 만들어 줌
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie: cookies) {
			LOG.trace("{}, {}", cookie.getName(), cookie.getValue());
			if (cookie.getName().equals("Yellow")) {
				cookieId = cookie.getValue();
				break;
			}
		}
		System.out.println("쿠키" + cookieId);
		request.setAttribute("cookieId", cookieId);

		switch (action) {
		
		case "carrier":
			rd = request.getRequestDispatcher("carrier/carrier.jsp");
			rd.forward(request, response);		
			break;
			
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
			rd = request.getRequestDispatcher("admin/shipping/shippinghistory.jsp");
			rd.forward(request, response);
			break;

		case "shipping":
			String add = request.getParameter("add");
			String add1 = null;
			String add2 = null;
			String add3 = null;
			String add4 = null;
			wDao = new WaybillDAO();
			wDto = new WaybillDTO();
			LOG.info(add);
			switch (add) {
			case "A":
				add1 = "서울경기";
				add2 = add1.substring(0, 2);
				add3 = add1.substring(2, 4);
				wayList = wDao.selectAdd2(add2, add3);
				break;
			case "B":
				add1 = "대전세종충남";
				add2 = add1.substring(0, 2);
				add3 = add1.substring(2, 4);
				add4 = add1.substring(4, 6);
				wayList = wDao.selectAdd3(add2, add3, add4);
				break;
			case "C":
				add1 = "광주전라";
				add2 = add1.substring(0, 2);
				add3 = add1.substring(2, 4);
				wayList = wDao.selectAdd2(add2, add3);
				break;
			case "D":
				add1 = "대구울산부산경상";
				add2 = add1.substring(0, 2);
				add3 = add1.substring(2, 4);
				add4 = add1.substring(4, 6);
				String add5 = add1.substring(6, 8);
				wayList = wDao.selectAdd4(add2, add3, add4, add5);
				break;
			case "E":
				add1 = "강원";
				add2 = add1.substring(0, 2);
				wayList = wDao.selectAdd1(add2);
				break;
			}

			request.setAttribute("wayList", wayList);
			rd = request.getRequestDispatcher("admin/shipping/shipping.jsp");
			rd.forward(request, response);
			break;

		case "nowaybilllist":
			wDao = new WaybillDAO();
			nwDto = new NoWaybillDTO();
			oDao = new OrdersDAO();
			
			orderAll = oDao.selectOrderAll();

			for (OrdersDTO o : orderAll) {
				if (!wDao.selectwaybill(o.getO_id()) && !wDao.selectnowaybill(o.getO_id()))
					oDao.insertNoWaybill(o.getO_id());
			}
			nwayList = wDao.selectNoWaybillAll();
			if (nwayList.size() == 0) {
				nwayList = null;
				request.setAttribute("nwayList", nwayList);
			} else
				request.setAttribute("nwayList", nwayList);

			rd = request.getRequestDispatcher("admin/shipping/noshippinghistory.jsp");
			rd.forward(request, response);
			break;

		// 운송회사에 따른 운송내역
		case "carrierlist":
			String field = (String) session.getAttribute(request.getAttribute("cookieId")+"memberField");
			wDao = new WaybillDAO();
			wDto = new WaybillDTO();

			List<WaybillDTO> carrierList = wDao.selectCarrierAll(field);
			request.setAttribute("carrierList", carrierList);
			request.setAttribute("field", field);
			LOG.info("운송회사");
			rd = request.getRequestDispatcher("carrier/carrier.jsp");
			rd.forward(request, response);
			break;

		// 발주 가격 내역
		case "shipprofitAll":
			wDao = new WaybillDAO();
			wDto = new WaybillDTO();

			List<WaybillDTO> shipProfit = wDao.shipprofitAll();
			request.setAttribute("shipProfit", shipProfit);
			rd = request.getRequestDispatcher("admin/grossprofit/grossprofit_ship.jsp");
			rd.forward(request, response);
			break;

		case "shipprofit_detail":
			wDao = new WaybillDAO();
			wDto = new WaybillDTO();

			String w_time = request.getParameter("w_time");
			String waycode = request.getParameter("waycode");
			String w_name = request.getParameter("w_name");

			List<WaybillDTO> shipProfit_detail = wDao.shipprofit(w_time, waycode);
			request.setAttribute("waycode", waycode);
			request.setAttribute("w_name", w_name);
			request.setAttribute("shipList_detail", shipProfit_detail);
			rd = request.getRequestDispatcher("admin/grossprofit/grossprofit_ship_detail.jsp");
			rd.forward(request, response);

			// 운송회사별 월단위 운송 내역
		case "selectWaybill":
			wDao = new WaybillDAO();
			date = request.getParameter("dateInventory");
			LOG.info(date);
			date1 = date + "-01 00:00";
			LOG.info(date1);
			date2 = date + "-31 23:59";
			LOG.info(date2);
			field = request.getParameter("field");
			wayList = wDao.selectWaybill(date1, date2, field);
			LOG.info("기간설정 달력");
			request.setAttribute("dateInventory", date);
			request.setAttribute("wayList", wayList);
			request.setAttribute("field", field);
			rd = request.getRequestDispatcher("carrier/carrier_selectTime.jsp");
			rd.forward(request, response);
			break;

		// 관리자 페이지 월단위 운송 내역
		case "selectShipping":
			wDao = new WaybillDAO();
			date = request.getParameter("dateInventory");
			LOG.info(date);
			date1 = date + "-01 00:00";
			LOG.info(date1);
			date2 = date + "-31 23:59";
			LOG.info(date2);

			wayList = wDao.selectWaybill(date1, date2);
			LOG.info("기간설정 달력");
			request.setAttribute("dateInventory", date);
			request.setAttribute("wayList", wayList);
			rd = request.getRequestDispatcher("admin/shipping/shipping_selectTime.jsp");
			rd.forward(request, response);
			break;

		case "shipselectTime":
			date = request.getParameter("dateInventory");
			LOG.info(date);
			date1 = date + "-01 00:00";
			LOG.info(date1);
			date2 = date + "-31 23:59";
			LOG.info(date2);

			wDao = new WaybillDAO();
			wDto = new WaybillDTO();

			shipProfit = wDao.selectShipprofitAll(date1, date2);
			for (WaybillDTO waydto : shipProfit) {
				shiptotal += waydto.getCount() * 10000;
			}

			LOG.info("운송회사 한달 내역");
			request.setAttribute("dateInventory", date);
			request.setAttribute("shipProfit", shipProfit);
			rd = request.getRequestDispatcher("admin/grossprofit/grossprofit_ship_selectTime.jsp");
			rd.forward(request, response);
			break;

		}
	}

}
