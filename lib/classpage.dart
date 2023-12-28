import 'dart:ui';


class Homepage{
  String? image;
  String? story;
  Homepage(this.image,this.story);
}

List homepage= homedata.map((e) => Homepage(e["image"],e['story'])).toList();

var homedata=[
  {"image":"assets/homeimage.jpg",
    'story':"The International Cricket Council is the global governing body of cricket. It was founded as the Imperial Cricket Conference in 1909 by representatives from Australia, England, and South Africa."
  },
  {"image":"assets/homeimg1.jpg",
    'story':"Inspector Vinayak is suspended after he lets a smuggler escape. He then meets a group of men who plan to whisk away 500 crore belonging to a gangster. He promises to help them for a share in the loot."
  },
  {"image":"assets/homeimg2.jpg",
    "story":"Inspector Vinayak is suspended after he lets a smuggler escape. He then meets a group of men who plan to whisk away 500 crore belonging to a gangster. He promises to help them for a share in the loot."
  },
  {"image":"assets/homeimg3.jpg",
    "story":"An alcoholic professor is enrolled to teach at a juvenile facility, unbeknownst to him. He soon clashes with a ruthless gangster, who uses the children as scapegoats for his crimes."
  },
  {"image":"assets/homeimage.jpg",
    'story':"The International Cricket Council is the global governing body of cricket. It was founded as the Imperial Cricket Conference in 1909 by representatives from Australia, England, and South Africa."
  },
  {"image":"assets/homeimg1.jpg",
    'story':"Inspector Vinayak is suspended after he lets a smuggler escape. He then meets a group of men who plan to whisk away 500 crore belonging to a gangster. He promises to help them for a share in the loot."
  },
  {"image":"assets/homeimg2.jpg",
    "story":"Inspector Vinayak is suspended after he lets a smuggler escape. He then meets a group of men who plan to whisk away 500 crore belonging to a gangster. He promises to help them for a share in the loot."
  },
  {"image":"assets/homeimg3.jpg",
    "story":"An alcoholic professor is enrolled to teach at a juvenile facility, unbeknownst to him. He soon clashes with a ruthless gangster, who uses the children as scapegoats for his crimes."
  },
];

// class VideoItem{
//   String? videoUrl;
//
//   VideoItem(String e, {required this.videoUrl});
// }
//
// List videodataitem= videodata.map((e) => VideoItem(e["videoUrl"]!, videoUrl: '')).toList();
//
// var videodata=[
//   {"videoUrl":"https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"},
//   // {"image":"'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'"},
//   // {"image":"'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'"},
//   // {"image":"'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'"},
//   // {"image":"'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'"},
//   // {"image":"'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'"},
//   // {"image":"'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'"},
// ];

class Searchpage{
  String? image;
  String? text;
  Searchpage(this.image,this.text);
}
List searchpage= searchpagedata.map((e) => Searchpage(e["image"], e["text"])).toList();

var searchpagedata=[
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
  {"image":"assets/Tileimg.jpg","text":"Geetha Govindam"},
];
class HotPageModel{
  String? image;
  String? textImage;
  String? Text;
  HotPageModel(this.image, this.textImage,this.Text);
}
List hotPage = hotPageData.map((e) => HotPageModel(e["image"], e["textImage"],e['Text'])).toList();

var hotPageData =[
{
  "image":"https://static.toiimg.com/thumb/msid-100720845,width-1280,resizemode-4/100720845.jpg",
  "textImage":"assets/img.png",
  "Text":"A covert investgation changes its course when special\nofficer Amar encounters an unrelenting Vikram and his\npursuit to take down a notorious drug cartel\nA covert investgation changes its course when special\nofficer Amar encounters an unrelenting Vikram and his\npursuit to take down a notorious drug cartel"
},
  {
    "image":"https://static.toiimg.com/thumb/msid-100720845,width-1280,resizemode-4/100720845.jpg",
    "textImage":"assets/img.png",
    "Text":"A covert investgation changes its course when special\nofficer Amar encounters an unrelenting Vikram and his\npursuit to take down a notorious drug cartel\nA covert investgation changes its course when special\nofficer Amar encounters an unrelenting Vikram and his\npursuit to take down a notorious drug cartel"
  },
  {
    "image":"https://static.toiimg.com/thumb/msid-100720845,width-1280,resizemode-4/100720845.jpg",
    "textImage":"assets/img.png",
    "Text":"A covert investgation changes its course when special\nofficer Amar encounters an unrelenting Vikram and his\npursuit to take down a notorious drug cartel\nA covert investgation changes its course when special\nofficer Amar encounters an unrelenting Vikram and his\npursuit to take down a notorious drug cartel"
  },
  {
    "image":"https://static.toiimg.com/thumb/msid-100720845,width-1280,resizemode-4/100720845.jpg",
    "textImage":"assets/img.png",
    "Text":"A covert investgation changes its course when special\nofficer Amar encounters an unrelenting Vikram and his\npursuit to take down a notorious drug cartel\nA covert investgation changes its course when special\nofficer Amar encounters an unrelenting Vikram and his\npursuit to take down a notorious drug cartel"
  },
  {
    "image":"https://static.toiimg.com/thumb/msid-100720845,width-1280,resizemode-4/100720845.jpg",
    "textImage":"assets/img.png",
    "Text":"A covert investgation changes its course when special\nofficer Amar encounters an unrelenting Vikram and his\npursuit to take down a notorious drug cartel\nA covert investgation changes its course when special\nofficer Amar encounters an unrelenting Vikram and his\npursuit to take down a notorious drug cartel"
  },

  ];


Color defaultcolorblue =Color(0xff0d235b);
Color defaultcolorblack =Color(0xff1c100b);//for divider text
Color  dividerclr =Color(0xFF989898);//for divider
Color bgclr =Color(0xFFF5F5F5);

