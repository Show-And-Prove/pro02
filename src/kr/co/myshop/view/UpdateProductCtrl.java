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
import kr.co.myshop.vo.Product;
import java.sql.DriverManager;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet({ "/UpdateProductCtrl" })
public class UpdateProductCtrl extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
    private static final String USER = "root";
    private static final String PASS = "a1234";
    String sql;
    
    public UpdateProductCtrl() {
        this.sql = "";
    }
    
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        final int proNo = Integer.parseInt(request.getParameter("proNo"));
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.sql = "select * from product where prono=?";
            final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul", "root", "a1234");
            PreparedStatement pstmt = con.prepareStatement(this.sql);
            pstmt.setInt(1, proNo);
            ResultSet rs = pstmt.executeQuery();
            final Product vo = new Product();
            if (rs.next()) {
                vo.setProNo(rs.getInt("prono"));
                vo.setCateNo(rs.getInt("cateno"));
                vo.setProName(rs.getString("proname"));
                vo.setProSpec(rs.getString("prospec"));
                vo.setOriPrice(rs.getInt("oriprice"));
                vo.setDiscountRate(rs.getDouble("discountrate"));
                vo.setProPic(rs.getString("propic"));
                vo.setProPic2(rs.getString("propic2"));
            }
            request.setAttribute("pro", (Object)vo);
            rs.close();
            pstmt.close();
            this.sql = "select * from category";
            pstmt = con.prepareStatement(this.sql);
            rs = pstmt.executeQuery();
            final List<Category> cateList = new ArrayList<Category>();
            while (rs.next()) {
                final Category cate = new Category();
                cate.setCateNo(rs.getInt("cateno"));
                cate.setCateName(rs.getString("catename"));
                cateList.add(cate);
            }
            request.setAttribute("cateList", (Object)cateList);
            final RequestDispatcher view = request.getRequestDispatcher("./product/updateProduct.jsp");
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