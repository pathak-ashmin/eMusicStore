package com.emusicstore.dao;

import com.emusicstore.model.Cart;

public interface CartDao {

	Cart getCartById(int cartId);

	void updateCart(Cart cart);
}
