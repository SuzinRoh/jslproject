package exAdmin.servlet.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exAdmin.model.adminNoticeDAO;
import exAdmin.model.adminNoticeVO;
import exAdmin.util.PageIndex;

@WebServlet("/adminNoticeList.do")
public class adminNoticeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public adminNoticeListServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		adminNoticeDAO dao = adminNoticeDAO.getInstance();
		adminNoticeVO vo = new adminNoticeVO();
		String searchQuery = "", search = "", key = "";

		int totcount = 0;

		if (request.getParameter("key") != null) {
			key = request.getParameter("key");
			search = request.getParameter("search");
			searchQuery = search + " like '%" + key + "%' ";
			totcount = dao.NoticeSearchCount(searchQuery);
		} else {
			totcount = dao.NoticeListCount();
		}

		int nowpage = 1;
		int maxlist = 10;
		int totpage = 1;

		if (totcount % maxlist == 0) {
			totpage = totcount / maxlist;
		} else {
			totpage = (totcount / maxlist) + 1;
		}

		if (request.getParameter("page") != null) {
			nowpage = Integer.parseInt(request.getParameter("page"));
		}

		int startpage = (nowpage - 1) * maxlist + 1;
		int endpage = nowpage * maxlist;
		int listcount = totcount - ((nowpage - 1) * maxlist);

		List<adminNoticeVO> list = null;
		if (key.equals("")) {
			list = dao.NoticeList(startpage, endpage);
		} else {
			list = dao.NoticeSearch(searchQuery, startpage, endpage);
		}

		String pageSkip = "";
		if (key.equals("")) {
			pageSkip = PageIndex.pageList(nowpage, totpage, "BoardList.do", "");
		} else {
			pageSkip = PageIndex.pageListHan(nowpage, totpage, "BoardList.do", search, key);
		}

		request.setAttribute("page", nowpage);
		request.setAttribute("totpage", totpage);
		request.setAttribute("totcount", totcount);
		request.setAttribute("listcount", listcount);
		request.setAttribute("pageSkip", pageSkip);
		request.setAttribute("page", nowpage);
		request.setAttribute("list", list);
		request.setAttribute("search", search);
		request.setAttribute("key", key);

		
		RequestDispatcher rd = request.getRequestDispatcher("Admin/notice_list.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}