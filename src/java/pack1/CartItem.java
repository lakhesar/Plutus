
package pack1;


public class CartItem
{
  public String productid;
  public  String productname;
  public int price;
  public int qty;
  public String brand;
  public String size;

  public CartItem(String productid, String productname, int price, int qty, String brand, String size) 
  {
    this.productid = productid;
    this.productname = productname;
    this.price = price;
    this.qty = qty;
    this.brand = brand;
    this.size=size;
 }

}
