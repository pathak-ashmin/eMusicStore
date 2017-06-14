package com.emusicstore.service.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.emusicstore.dao.CartDao;
import com.emusicstore.model.Cart;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Cart getCartById(int cartId) {
		Session session = sessionFactory.getCurrentSession();

		return (Cart) session.get(Cart.class, cartId);
	}

	@Override
	public void updateCart(Cart cart) {
		int cartId = cart.getCartId();
	

	}

}
