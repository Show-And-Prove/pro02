package kr.co.myshop.ctrl;

import java.io.IOException;
import java.sql.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;

import kr.co.myshop.vo.Notice;


@WebServlet("/BoardListCtrl")

public class BoardListCtrl extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String url = "jdbc:mysql://localhost:3306/myshop1";
	private final static String dbid = "root";
	private final static String dbpw = "a1234";
	private final static String sql = "";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
       
    public BoardListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Notice> notiList = new ArrayList<Notice>();
		try {
			Class.forName(DRIVER);
			//sql = "select * from notice";
			con = DriverManager.getConnection(url, dbid, dbpw);
				
				
				
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
