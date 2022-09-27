/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ignite.tcs.com.bean;

/**
 *
 * @author ignite390
 */
public class cartBean {
    int id ,ProductId,Quantity,ProductPrice;
    String Email;

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int ProductId) {
        this.ProductId = ProductId;
    }

    public int getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(int ProductPrice) {
        this.ProductPrice = ProductPrice;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
}
