package kr.co.myshop.ctrl;

import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet({ "/IdCheckCtrl" })
public class IdCheckCtrl extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
    private static final String USER = "root";
    private static final String PASS = "a1234";
    String sql;
    
    public IdCheckCtrl() {
        this.sql = "";
    }
    
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        final String cusId = request.getParameter("cusId");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.sql = "select * from custom where cusid=?";
            final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul", "root", "a1234");
            final PreparedStatement pstmt = con.prepareStatement(this.sql);
            pstmt.setString(1, cusId);
            final ResultSet rs = pstmt.executeQuery();
            final PrintWriter out = response.getWriter();
            String script = "<script>";
            script = String.valueOf(script) + "function apply(fid){";
            script = String.valueOf(script) + "opener.document.frm1.cusId.value = fid;";
            script = String.valueOf(script) + "opener.document.frm1.idck.value = 'yes';";
            script = String.valueOf(script) + "window.close();";
            script = String.valueOf(script) + "}</script>";
            out.println(script);
            if (rs.next()) {
                out.println("<h3>\ud574\ub2f9 \uc544\uc774\ub514\uac00 \uc774\ubbf8 \uc874\uc7ac\ud569\ub2c8\ub2e4.</h3>");
                out.println("<button onclick='javascript:window.close()'>\ub2eb\uae30</button>");
            }
            else {
                out.println("<h3>\uc0ac\uc6a9 \uac00\ub2a5\ud55c \uc544\uc774\ub514 \uc785\ub2c8\ub2e4.</h3>");
                out.println("<a href='javascript:apply(\"" + cusId + "\")'>" + cusId + "[\uc801\uc6a9]</a>");
                out.println("<p>\uc801\uc6a9\uc744 \ub204\ub974\uba74, \uc785\ub825\ud558\uc2e0 \uc544\uc774\ub514\ub97c \uc0ac\uc6a9\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.</p>");
            }
            rs.close();
            pstmt.close();
            con.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}