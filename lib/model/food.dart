part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingridients;
  final int price;
  final double rate;

  Food({
    required this.id,
    required this.picturePath,
    required this.name,
    required this.description,
    required this.ingridients,
    required this.price,
    required this.rate,
  });
}

Food mockFood = Food(
    id: 1,
    picturePath: 'https://kbu-cdn.com/dk/wp-content/uploads/sate-kambing-bumbu-kecap.jpg',
    name: 'Sate Kambing',
    description: 'Sate Kambing enak mantap pol wes sakmene ae deskripsine pusing mikir panjang2',
    ingridients: '400 gram daging kambing (potong-potong),10 tusuk sate,lada putih secukupnya,1 sachet Saus Tiram Selera,10 siung bawang merah (rajang kasar)',
    price: 35000,
    rate: 4.2);
