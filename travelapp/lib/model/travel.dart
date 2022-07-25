class Travel {
  String name;
  String address;
  String img;
  Travel(this.name, this.address, this.img);

  static List<Travel> genareteTravelBlog() {
    return [
      Travel("Bali", "Indonesia", "images/t1.jpg"),
      Travel("Sun Island", "Maldives", "images/t2.jpg"),
      Travel("Paris", "France", "images/t3.jpg")
    ];
  }

  static List<Travel> mostPopulerTravelBlog() {
    return [
      Travel("Ratar Gul", "Sylhet", "images/t4.jpg"),
      Travel("Jaflong", "Sylhet", "images/t5.jpg"),
      Travel("Cha Bagan", "Sylhet", "images/t6.jpg")
    ];
  }
}
