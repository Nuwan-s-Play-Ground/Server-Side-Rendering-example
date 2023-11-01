package lk.ijse.dep11.web;

import lk.ijse.dep11.web.to.Customer;
import lk.ijse.dep11.web.to.Item;
import org.apache.commons.dbcp2.BasicDataSource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/items")
public class ItemServlet extends HttpServlet {

//    private  BasicDataSource pool;
//    @Override
//    public void init() throws ServletException {
//        pool = new BasicDataSource();
//        pool.setUsername("root");
//        pool.setPassword("123");
//        pool.setUrl("jdbc:mysql://localhost:3306/dep11");
//        pool.setDriverClassName("com.mysql.cj.jdbc.Driver");
//        pool.setInitialSize(10);
//        pool.setMaxTotal(20);
//    }
//
//    @Override
//    public void destroy() {
//        try {
//            pool.close();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection connection = DriverManager
//                    .getConnection("jdbc:mysql://localhost:3306/dep11", "root", "123");
            BasicDataSource pool = (BasicDataSource) getServletContext().getAttribute("connectionPool");
            Connection connection= pool.getConnection();
            ResultSet rst = connection.createStatement().executeQuery("SELECT * FROM Item");
            List<Item> itemList = new ArrayList<>();
            while (rst.next()){
                String itemCode = rst.getString("ItemCode");
                String description = rst.getString("Description");
                BigDecimal unitPrice =rst.getBigDecimal("UnitPrice");
                itemList.add(new Item(itemCode,description,unitPrice));
                }
            connection.close();
            req.setAttribute("itemList", itemList);
            getServletContext().getRequestDispatcher("/WEB-INF/item.jsp").forward(req,resp);
            } catch (Exception e){
                throw  new RuntimeException(e);
        }
    }
}
