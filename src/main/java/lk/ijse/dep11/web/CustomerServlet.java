package lk.ijse.dep11.web;

import lk.ijse.dep11.web.to.Customer;
import org.apache.commons.dbcp2.BasicDataSource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/customers")
public class CustomerServlet extends HttpServlet {
//    private  BasicDataSource pool;
//
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
            ResultSet rst = connection.createStatement().executeQuery("SELECT * FROM Customer");
            List<Customer> customerList = new ArrayList<>();
            while (rst.next()){
                String id = rst.getString("CustID");
                String name = rst.getString("CustName");
                String address =rst.getString("CustAddress");
                customerList.add(new Customer(id,name,address));
                }
            connection.close();
            req.setAttribute("customerList", customerList);
            getServletContext().getRequestDispatcher("/WEB-INF/customers.jsp").forward(req,resp);
            } catch (Exception e){
                throw  new RuntimeException(e);
        }
    }
}
