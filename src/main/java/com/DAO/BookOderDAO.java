package com.DAO;

import java.util.List;

import com.entity.Book_Order;

public interface BookOderDAO {
	public int getOrderNo();
	
	public boolean saveOrder(List<Book_Order> blist);
	
	public List<Book_Order> getBook(String email);
	public List<Book_Order> getBook( );

}