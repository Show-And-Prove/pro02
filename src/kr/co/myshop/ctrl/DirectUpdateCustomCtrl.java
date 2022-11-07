package kr.co.myshop.ctrl;

import java.io.IOException;
import javax.servlet.ServletException;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.security.NoSuchAlgorithmException;
import com.crypto.util.SHA256;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet({ "/DirectUpdateCustomCtrl" })
public class DirectUpdateCustomCtrl extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
    private static final String USER = "root";
    private static final String PASS = "a1234";
    String sql;
    int cnt;
    
    public DirectUpdateCustomCtrl() {
        this.sql = "";
        this.cnt = 0;
    }
    
    protected void service(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        final String cusId = request.getParameter("cusId");
        String cusPw = request.getParameter("cusPw");
        final String changePw = request.getParameter("changePw");
        if (changePw.equals("yes")) {
            try {
                cusPw = SHA256.encrypt(cusPw);
            }
            catch (NoSuchAlgorithmException e1) {
                e1.printStackTrace();
            }
        }
        final String cusName = request.getParameter("cusName");
        final String tel = request.getParameter("tel");
        final int point = Integer.parseInt(request.getParameter("point"));
        final int level = Integer.parseInt(request.getParameter("level"));
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.sql = "update custom set cuspw=?, cusname=?, tel=?, point=?, level=? where cusid=?";
            final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul", "root", "a1234");
            final PreparedStatement pstmt = con.prepareStatement(this.sql);
            pstmt.setString(1, cusPw);
            pstmt.setString(2, cusName);
            pstmt.setString(3, tel);
            pstmt.setInt(4, point);
            pstmt.setInt(5, level);
            pstmt.setString(6, cusId);
            this.cnt = pstmt.executeUpdate();
            if (this.cnt >= 1) {
                response.sendRedirect(String.valueOf(request.getContextPath()) + "/admin/index.jsp");
            }
            else {
                response.sendRedirect(String.valueOf(request.getContextPath()) + "/GetCustomDetailCtrl?cusId=" + cusId);
            }
            pstmt.close();
            con.close();
        }
        catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}