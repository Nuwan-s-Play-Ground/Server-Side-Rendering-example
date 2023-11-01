package lk.ijse.dep11.web.listener;

import org.apache.commons.dbcp2.BasicDataSource;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.sql.SQLException;

@WebListener
public class AppContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        BasicDataSource pool = new BasicDataSource();
        pool.setUsername("root");
        pool.setPassword("123");
        pool.setUrl("jdbc:mysql://localhost:3306/dep11");
        pool.setDriverClassName("com.mysql.cj.jdbc.Driver");
        pool.setInitialSize(10);
        pool.setMaxTotal(20);
        sce.getServletContext().setAttribute("connectionPool", pool);
    }
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        BasicDataSource pool = (BasicDataSource) sce.getServletContext()
                .getAttribute("connectionPool");
        try {
            pool.close();
        } catch (SQLException e) {
            // Do nothing
        }
    }

}
