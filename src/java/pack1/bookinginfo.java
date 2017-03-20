package pack1;


public class bookinginfo
{
   public String customer_name,amount,customer_telno,customer_email,product_name,brand_name,booking_date;
   public int transaction_id,price_per_unit,quantity;

    public bookinginfo(String customer_name,  String customer_telno, String customer_email,String product_name, String brand_name, String booking_date, int transaction_id, int price_per_unit, int quantity,String amount)
    {
        this.customer_name = customer_name;
        this.customer_telno = customer_telno;
        this.customer_email = customer_email;
        this.product_name = product_name;
        this.brand_name = brand_name;
        this.booking_date = booking_date;
        this.transaction_id = transaction_id;
        this.price_per_unit = price_per_unit;
        this.quantity = quantity;
        this.amount = amount;

    }


   
}
