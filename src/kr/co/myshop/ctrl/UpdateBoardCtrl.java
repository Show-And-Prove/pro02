package kr.co.myshop.ctrl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import javax.servlet.ServletResponse;
import javax.servlet.ServletRequest;
import kr.co.myshop.vo.Notice;
import java.sql.DriverManager;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet({ "/UpdateBoardCtrl" })
public class UpdateBoardCtrl extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
    private static final String USER = "root";
    private static final String PASS = "a1234";
    String sql;
    
    public UpdateBoardCtrl() {
        this.sql = "";
    }
    
    protected void service(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        final int no = Integer.parseInt(request.getParameter("no"));
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.sql = "select * from notice where no=?";
            final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul", "root", "a1234");
            final PreparedStatement pstmt = con.prepareStatement(this.sql);
            pstmt.setInt(1, no);
            final ResultSet rs = pstmt.executeQuery();
            final Notice vo = new Notice();
            if (rs.next()) {
                vo.setNo(rs.getInt("no"));
                vo.setTitle(rs.getString("title"));
                vo.setContent(rs.getString("content"));
                vo.setAuthor(rs.getString("author"));
                vo.setResDate(rs.getString("resdate"));
            }
            request.setAttribute("notice", (Object)vo);
            final RequestDispatcher view = request.getRequestDispatcher("./notice/updateBoard.jsp");
            view.forward((ServletRequest)request, (ServletResponse)response);
            rs.close();
            pstmt.close();
            con.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}