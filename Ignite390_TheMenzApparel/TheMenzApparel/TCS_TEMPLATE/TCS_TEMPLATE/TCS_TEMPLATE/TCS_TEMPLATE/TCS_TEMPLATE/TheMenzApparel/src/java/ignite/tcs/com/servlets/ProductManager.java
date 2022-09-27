/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ignite.tcs.com.servlets;

import ignite.tcs.com.bean.cartBean;
import ignite.tcs.com.dao.ProductDAO;
import org.json.JSONArray;

/**
 *
 * @author ignite390
 */
class ProductManager {

    public String addToCart(cartBean cart) {
        return new ProductDAO().addToCart(cart);
    }

    JSONArray loadCart(String email) {
        return new ProductDAO().loadCart(email);
    }
}
