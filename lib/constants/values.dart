import 'package:e_waste_project/model/news.dart';
import 'package:e_waste_project/model/category.dart';

class StaticValues {
  List<News> news = [
    News(
        title: "Latest E-Waste News",
        description: "Time to crack down on electronic waste?",
        image:
            "https://rnz-ressh.cloudinary.com/image/upload/s--x-muCJxu--/c_scale,f_auto,q_auto,w_1050/4NGJYDF_copyright_image_185780",
        source: "RNZ",
        sourceImage:
            "https://www.rnz.co.nz/national/programmes/afternoons/audio/2018682986/time-to-crack-down-on-electronic-waste",
        time: "1:24 pm, 18 February 2019"),
    News(
        title: "Latest On E-Waste Recycling in Gauteng",
        description: "E-waste recycling project to be launched in Gauteng",
        image:
            "https://cisp.cachefly.net/assets/articles/images/resized/0000984001_resized_wasterecyclingewaste1022bloomberg.jpg",
        source: "Engineering News",
        sourceImage:
            "https://www.engineeringnews.co.za/article/e-waste-recycling-project-to-be-launched-in-gauteng-2022-02-16/rep_id:4136",
        time: "2:34 pm, 16TH February 2022"),
    News(
        title: "Latest Tech News Around The World",
        description: "Is Tesla in trouble?",
        image: "https://ichef.bbci.co.uk/images/ic/640x360/p0cnbgcz.jpg",
        source: "BBC",
        sourceImage: "https://www.bbc.co.uk/programmes/w3ct375c",
        time: "21:06, 21 Jul 2022")
  ];

  List<Category> categories = [
    Category(
      name: "E-Waste",
    ),
    Category(
      name: "Recycling",
    ),
    Category(
      name: "Technology",
    ),
    Category(
      name: "Tech-Business",
    )
  ];
}
