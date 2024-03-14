class UserModel {
  final String image;
  final String name;
  final String lastMsg;

  final String date;

  UserModel(
      {required this.image,
      required this.name,
      required this.lastMsg,
      required this.date});
}

List<UserModel>user=[
  UserModel(image:'https://th.bing.com/th/id/R.224d7228691ef6fc2455f0e1ec52791b?rik=QJ0r1TQLYsrtoA&riu=http%3a%2f%2fcloudmind.info%2fwp-content%2fuploads%2f2014%2f12%2fblue-water-lily-flower-flowers-hd-wallpaper-beautiful-gallery-hd1.jpg&ehk=NvVhumUlyoj4etzuWQ1jlUt53mf9nO1liWbEjlLun94%3d&risl=&pid=ImgRaw&r=0' ,
   name: 'MARYOMA',
    lastMsg: 'HELLO', 
    date: '12:00PM'),

 UserModel(image:'https://d2j8k8fxwhe17j.cloudfront.net/images/slider/%D9%81%D8%B7%D8%A7%D8%A6%D8%B1-%D8%A7%D9%84%D8%AC%D8%A8%D9%86%D8%A9-%D8%A7%D9%84%D8%A8%D9%8A%D8%B6%D8%A7%D8%A1.jpeg' ,
  name:' الزعيم', 
  lastMsg: 'HELLO,',
   date: '2:00AM'),


 UserModel(image:'https://www.thaqfny.com/wp-content/uploads/2021/01/unnamed-1-3.jpg' ,
  name:' قلقاسه',
   lastMsg:' HELLO',
    date: '5:00PM'),



 UserModel(image:'https://ilhyh.com/wp-content/uploads/2020/06/%D8%A7%D9%84%D9%83%D8%B4%D8%B1%D9%8A-%D8%A7%D9%84%D9%85%D8%B5%D8%B1%D9%8A-1.jpg ',
  name: 'تومه',
   lastMsg: 'HELLO',
    date: '2:2PM'),


 UserModel(image:'https://th.bing.com/th/id/R.13937f2e223f09720a8cd3835418beee?rik=P4xLAkEaaY8Tww&riu=http%3a%2f%2fimg.youm7.com%2fimages%2fNewsPics%2fgallery%2fpics%2f52016274834498%d8%b9%d9%85-%d8%b4%d9%88%d9%82%d9%89-%d8%a7%d9%84%d9%81%d8%ae%d8%b1%d8%a7%d9%86%d9%89---%d9%85%d8%b5%d9%86%d8%b9-%d8%ad%d9%84%d9%88%d9%8a%d8%a7%d8%aa-(4).jpg&ehk=ll0KUyi3IQ9swX0IANSvnLh3yaJwkk1JttHl%2beUUP2I%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1' ,
  name: 'الفخراني',
   lastMsg:'HELLO',
    date: '5:88pm'),
];