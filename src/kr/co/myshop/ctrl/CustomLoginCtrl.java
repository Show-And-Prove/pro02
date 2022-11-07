package kr.co.myshop.ctrl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.security.NoSuchAlgorithmException;
import com.crypto.util.SHA256;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet({ "/CustomLoginCtrl" })
public class CustomLoginCtrl extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
    private static final String USER = "root";
    private static final String PASS = "a1234";
    String sql;
    
    public CustomLoginCtrl() {
        this.sql = "";
    }
    
    protected void service(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        final String cusId = request.getParameter("cusId");
        final String cus = request.getParameter("cusPw");
        String cusPw = "";
        try {
            cusPw = SHA256.encrypt(cus);
        }
        catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.sql = "select * from custom where cusid=? and cuspw=?";
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul", "root", "a1234");
            
            // 트랜잭션 처리 시작 - auto commit off
            con.setAutoCommit(false);
            //
            
            PreparedStatement pstmt = con.prepareStatement(this.sql);
            ResultSet rs = null;
            pstmt.setString(1, cusId);
            pstmt.setString(2, cusPw);
            rs = pstmt.executeQuery();
            final HttpSession session = request.getSession();
            if (rs.next()) {
            	// 
            	sql = "update custom set visited=visited+1, point=point+5 where cusid=?";
            	pstmt = con.prepareStatement(sql);
            	pstmt.setString(1, cusId);
            	con.commit();
            	con.setAutoCommit(true);
            	// 끝 auto commit on
                session.setAttribute("sid", (Object)cusId);
                session.setAttribute("sname", (Object)rs.getString("cusname"));
                response.sendRedirect("index.jsp");
            }
            else {
                response.sendRedirect("./custom/login.jsp");
            }
            pstmt.close();
            con.close();
        }
        catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}