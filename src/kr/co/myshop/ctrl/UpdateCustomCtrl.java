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

@WebServlet({ "/UpdateCustomCtrl" })
public class UpdateCustomCtrl extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
    private static final String USER = "root";
    private static final String PASS = "a1234";
    String sql;
    int cnt;
    
    public UpdateCustomCtrl() {
        this.sql = "";
        this.cnt = 0;
    }
    
    protected void service(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        final String cusId = request.getParameter("cusId");
        final String cus = request.getParameter("edit_cusPw");
        String cusPw = request.getParameter("cusPw");
        Label_0082: {
            if (cus == null) {
                if (cus == "") {
                    break Label_0082;
                }
            }
            try {
                cusPw = SHA256.encrypt(cus);
            }
            catch (NoSuchAlgorithmException e1) {
                e1.printStackTrace();
            }
        }
        final String cusName = request.getParameter("cusName");
        final String address1 = request.getParameter("editaddress1");
        final String address2 = request.getParameter("editaddress2");
        String address3 = request.getParameter("address");
        if (address1 != null) {
            address3 = String.valueOf(address1) + " " + address2;
        }
        final String tel = request.getParameter("tel");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.sql = "update custom set cuspw=?, cusname=?, address=?, tel=? where cusid=?";
            final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul", "root", "a1234");
            final PreparedStatement pstmt = con.prepareStatement(this.sql);
            pstmt.setString(1, cusPw);
            pstmt.setString(2, cusName);
            pstmt.setString(3, address3);
            pstmt.setString(4, tel);
            pstmt.setString(5, cusId);
            this.cnt = pstmt.executeUpdate();
            if (this.cnt >= 1) {
                response.sendRedirect(String.valueOf(request.getContextPath()) + "/index.jsp");
            }
            else {
                response.sendRedirect(String.valueOf(request.getContextPath()) + "/GetCustomInfoCtrl");
            }
            pstmt.close();
            con.close();
        }
        catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}