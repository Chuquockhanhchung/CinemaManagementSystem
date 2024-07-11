package model;

public class Combo {
    private int id;
    private String name;
    private String description;
    private float price;
    private String img;
    private int  amount;

    public Combo(){

    }

   public Combo(int id, String name, String description, float price, String img, int amount) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.img = img;
        this.amount = amount;

   }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getId() {
        return id;
   }
   public void setId(int id) {
        this.id = id;
   }
   public String getName() {
        return name;
   }
   public void setName(String name) {
        this.name = name;

   }
   public String getDescription() {
        return description;
   }
   public void setDescription(String description) {
        this.description = description;

   }

   public float getPrice() {
        return price;

   }
   public void setPrice(float price) {
        this.price = price;
   }
   public String getImg() {
        return img;
   }
   public void setImg(String img) {
        this.img = img;
   }





}
