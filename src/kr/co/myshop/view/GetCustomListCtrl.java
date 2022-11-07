package kr.co.myshop.view;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.util.List;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import javax.servlet.ServletResponse;
import javax.servlet.ServletRequest;
import kr.co.myshop.vo.Custom;
import java.util.ArrayList;
import java.sql.DriverManager;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet({ "/GetCustomListCtrl" })
public class GetCustomListCtrl extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
    private static final String USER = "root";
    private static final String PASS = "a1234";
    String sql;
    
    public GetCustomListCtrl() {
        this.sql = "";
    }
    
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.sql = "select * from custom order by regdate desc";
            final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul", "root", "a1234");
            final PreparedStatement pstmt = con.prepareStatement(this.sql);
            final ResultSet rs = pstmt.executeQuery();
            final List<Custom> cusList = new ArrayList<Custom>();
            while (rs.next()) {
                final Custom vo = new Custom();
                vo.setCusId(rs.getString("cusid"));
                vo.setCusPw(rs.getString("cuspw"));
                vo.setCusName(rs.getString("cusname"));
                vo.setAddress(rs.getString("address"));
                vo.setTel(rs.getString("tel"));
                vo.setRegDate(rs.getString("regdate"));
                vo.setPoint(rs.getInt("point"));
                vo.setLevel(rs.getInt("level"));
                vo.setVisited(rs.getInt("visited"));
                cusList.add(vo);
            }
            request.setAttribute("cusList", (Object)cusList);
            final RequestDispatcher view = request.getRequestDispatcher("./admin/customList.jsp");
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