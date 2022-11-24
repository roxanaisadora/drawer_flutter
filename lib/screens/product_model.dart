class ProductModel {
  int id;
  String image;
  String title;
  String type;
  String descripcion;
  double price;
  ProductModel(this.id,this.image,this.title,this.type,this.descripcion,this.price);
 
  Map<String,dynamic>
toList()=>{
  "id":id,
  "image":image,
  "title":title,
  "type":type,
  "descripcion":descripcion,
  "price":price,
} ;  
   



}