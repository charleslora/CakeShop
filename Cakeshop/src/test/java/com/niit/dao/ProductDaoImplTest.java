package com.niit.dao;


import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBConfig;
import com.niit.model.Product;

public class ProductDaoImplTest {

	ApplicationContext context=new AnnotationConfigApplicationContext(DBConfig.class,ProductDaoImpl.class);
     ProductDao productDao=(ProductDao) context.getBean("productDaoImpl");
	@Test
	public void testSaveProduct() {
		/*Product product=new Product();
		product.setPrice(100);
		product.setQuantity(1);
		product.setProductName("bottle");
		product.setProductDesc("blue color");
		product=productDao.saveProduct(product);
		assertTrue(product.getId()>0);*/

	}
	@Test

	public void testGetProduct() {
		Product product3=productDao.getProduct(1);
		Product product1=productDao.getProduct(4);
		Product product2=productDao.getProduct(5);
		assertNotNull(product1);
		assertNotNull(product3);
		assertNull(product2);
		double expectedPrice=1000;
		double actualPrice=product1.getPrice();
		assertTrue(expectedPrice==actualPrice);
	
	}
	
	@Test
	public void testUpdateProduct() {
		Product product=productDao.getProduct(3);
		product.setPrice(2000);
		product.setQuantity(20);
		productDao.updateProduct(product);
		assertTrue(product.getPrice()==2000);
		assertTrue(product.getQuantity()!=10);
	}
	public void testGetAllProdcts()
	{
		List<Product> products=(List<Product>) productDao.getProduct(1);
		assertTrue(products.size()>0);
		assertFalse(products.isEmpty());
	}

}