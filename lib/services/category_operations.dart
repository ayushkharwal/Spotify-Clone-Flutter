import 'package:i_will_name_it_later/models/category.dart';

class CategoryOperations {
  CategoryOperations._() {}
  static List<Category> getCategories() {
    return <Category>[
      Category('Top Songs',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREonTOMLuc5kzzoI1N6VvTA7zX9J1i37E0Lw&usqp=CAU'),
      Category('Michael Jackson',
          'https://assets2.setlisting.cdn.crowds.dk/artists/4ea1dab2349f745fc90006cb/michael-jackson-37aa5d79a9.jpg'),
      Category('Kanye West',
          'https://pbs.twimg.com/profile_images/700073602461216768/TXUsmU-9_400x400.jpg'),
      Category('Kendrick Lamar',
          'https://c-fa.cdn.smule.com/rs-s71/arr/2c/8d/455a4e1e-7151-49b5-8d8b-35a2f34a5a46.jpg'),
      Category('J Cole',
          'https://images.genius.com/168d23b3c179c9440d926cf0b796b959.256x256x1.jpg'),
      Category('The Weeknd',
          'https://res.cloudinary.com/crunchbase-production/image/upload/c_thumb,h_256,w_256,f_auto,g_faces,z_0.7,q_auto:eco,dpr_1/ineu8nhxekibackiwuag'),
    ];
  }
}
