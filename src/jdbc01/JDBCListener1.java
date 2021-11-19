package jdbc01;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class JDBCListener1
 *
 */
@WebListener
public class JDBCListener1 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public JDBCListener1() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	System.out.println("JDBC 리스너 시작!!!!!");
    	
    	ServletContext application = sce.getServletContext();
    	
    	String path = "/WEB-INF/db.properties";
    	InputStream is = null;
    	
    	try {
    		is = application.getResourceAsStream(path);
    		
    		Properties props = new Properties();
    		props.load(is);
    		
    		System.out.println(props.get("user"));
    		System.out.println(props.get("password"));
    		System.out.println(props.get("ip"));
    		System.out.println(props.get("schema"));
    		
    	} catch (Exception e) {
    		e.printStackTrace();
    	} finally {
    		if (is != null) {
    			try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
    		}
		}
    	
    	
    	
    }
	
}


















