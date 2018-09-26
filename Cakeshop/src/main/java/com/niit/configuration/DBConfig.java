package com.niit.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.model.Authorities;
import com.niit.model.BillingAddress;
import com.niit.model.Category;
import com.niit.model.Customer;
import com.niit.model.Product;
import com.niit.model.ShippingAddress;
import com.niit.model.User;

@Configuration
@EnableTransactionManagement
@ComponentScan("com.niit")
public class DBConfig {
@Bean(name="dataSource") 
public DataSource getDataSource()
{
	System.out.println("Entering DataSource Bean creation method");
	DriverManagerDataSource dataSource=new DriverManagerDataSource();
	dataSource.setDriverClassName("org.h2.Driver");
	dataSource.setUrl("jdbc:h2:tcp://localhost/~/cakeshop");
	dataSource.setUsername("cake");
	dataSource.setPassword("123");
	System.out.println("DataSource bean");
	return dataSource;

}
@Bean(name="sessionFactory")
public SessionFactory sessionFactory() {
	System.out.println("Entering sessionFactory creation method");
	LocalSessionFactoryBuilder lsf=new LocalSessionFactoryBuilder(getDataSource());
	Properties hibernateProperties=new Properties();
	hibernateProperties.setProperty("hibernate.dialect","org.hibernate.dialect.H2Dialect" );
	hibernateProperties.setProperty("hibernate.hbm2ddl.auto","update");
	hibernateProperties.setProperty("hibernate.show_sql","true");
	lsf.addProperties(hibernateProperties);
	Class classes[]=new Class[]{Product.class,Category.class,Authorities.class,BillingAddress.class,Customer.class,ShippingAddress.class,User.class};
	
System.out.println("SessionFactory bean"+lsf);
return lsf.addAnnotatedClasses(classes).buildSessionFactory();
	}
	@Bean
	public HibernateTransactionManager hibTranaManagement(){
		return new HibernateTransactionManager(sessionFactory());	
	
}
@Bean(name="productDao")
public ProductDao getProductDao()
{
	return new ProductDaoImpl();
}

}
