package kr.co.myshop.view;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import javax.servlet.ServletResponse;
import javax.servlet.ServletRequest;
import kr.co.myshop.vo.Custom;
import java.sql.DriverManager;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet({ "/GetCustomDetailCtrl" })
public class GetCustomDetailCtrl extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
    private static final String USER = "root";
    private static final String PASS = "a1234";
    
    protected void service(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        final String cusId = request.getParameter("cusId");
        String sql = "";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            sql = "select * from custom where cusid=?";
            final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul", "root", "a1234");
            final PreparedStatement pstmt = con.prepareStatement(sql);
            ResultSet rs = null;
            pstmt.setString(1, cusId);
            rs = pstmt.executeQuery();
            String cusPw = "";
            final String key = "%02x";
            final String compPw = "";
            final Custom vo = new Custom();
            if (rs.next()) {
                vo.setCusId(rs.getString("cusid"));
                cusPw = rs.getString("cuspw");
                vo.setCusPw(cusPw);
                vo.setCusName(rs.getString("cusname"));
                vo.setAddress(rs.getString("address"));
                vo.setTel(rs.getString("tel"));
                vo.setRegDate(rs.getString("regdate"));
                vo.setPoint(rs.getInt("point"));
                vo.setLevel(rs.getInt("level"));
                vo.setVisited(rs.getInt("visited"));
            }
            else {
                response.sendRedirect("./custom/login.jsp");
            }
            request.setAttribute("custom", (Object)vo);
            final RequestDispatcher view = request.getRequestDispatcher("./admin/customDetail.jsp");
            view.forward((ServletRequest)request, (ServletResponse)response);
            pstmt.close();
            con.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}