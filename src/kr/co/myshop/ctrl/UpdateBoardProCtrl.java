package kr.co.myshop.ctrl;

import java.io.IOException;
import javax.servlet.ServletException;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet({ "/UpdateBoardProCtrl" })
public class UpdateBoardProCtrl extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
    private static final String USER = "root";
    private static final String PASS = "a1234";
    
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        final int no = Integer.parseInt(request.getParameter("no"));
        final String title = request.getParameter("title");
        final String content = request.getParameter("content");
        String sql = "";
        int cnt = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            sql = "update notice set title=?, content=? where no=?";
            final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul", "root", "a1234");
            final PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, title);
            pstmt.setString(2, content);
            pstmt.setInt(3, no);
            cnt = pstmt.executeUpdate();
            if (cnt >= 1) {
                response.sendRedirect("GetBoardListCtrl");
            }
            else {
                response.sendRedirect("GetBoardDetailCtrl?no=" + no);
            }
            pstmt.close();
            con.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}