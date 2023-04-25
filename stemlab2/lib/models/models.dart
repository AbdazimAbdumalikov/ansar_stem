class DataModel {
  final String title;
  final String imageName;
  //final double price;
  DataModel(
      this.title,
      this.imageName,
      //this.price,
      );
}

List<DataModel> dataList = [
  DataModel("Stem", "assets/images/stem1.jpeg"),
  DataModel("Office Formals", "assets/images/stem2.jpg"),
  DataModel("Casual Jeans", "assets/images/stem3.jpg"),
  DataModel("Jeans Skirt", "assets/images/stem4.jpg"),
];