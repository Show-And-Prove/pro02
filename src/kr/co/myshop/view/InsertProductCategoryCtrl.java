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
import kr.co.myshop.vo.Category;
import java.util.ArrayList;
import java.sql.DriverManager;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet({ "/InsertProductCategoryCtrl" })
public class InsertProductCategoryCtrl extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
    private static final String USER = "root";
    private static final String PASS = "a1234";
    String sql;
    
    public InsertProductCategoryCtrl() {
        this.sql = "";
    }
    
    protected void service(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.sql = "select * from category";
            final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul", "root", "a1234");
            final PreparedStatement pstmt = con.prepareStatement(this.sql);
            final ResultSet rs = pstmt.executeQuery();
            final List<Category> cateList = new ArrayList<Category>();
            while (rs.next()) {
                final Category vo = new Category();
                vo.setCateNo(rs.getInt("cateno"));
                vo.setCateName(rs.getString("catename"));
                cateList.add(vo);
            }
            request.setAttribute("cateList", (Object)cateList);
            final RequestDispatcher view = request.getRequestDispatcher("./product/insertProduct.jsp");
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