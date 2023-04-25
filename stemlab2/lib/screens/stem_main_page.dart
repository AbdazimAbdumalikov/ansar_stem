import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MainPageExample extends StatefulWidget {
  static const routeName = '/mainpage';
  const MainPageExample({Key? key}) : super(key: key);

  @override
  State<MainPageExample> createState() => _MainPageExampleState();
}

class _MainPageExampleState extends State<MainPageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    aspectRatio: 4.0,
                    enlargeCenterPage: true
                ),
                items: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image(
                      image: AssetImage('assets/images/stem1.jpeg'),
                      alignment: Alignment.center,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image(
                      image: AssetImage('assets/images/stem2.jpg'),
                      alignment: Alignment.center,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image(
                      image: AssetImage('assets/images/stem3.jpg'),
                      alignment: Alignment.center,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image(
                      image: AssetImage('assets/images/stem4.jpg'),
                      alignment: Alignment.center,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text('STEM'),
                    subtitle: Text(
                      'science, technology, engineering and mathematics',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Жаратылыстану, технология, инженерия және математика. STEM оқу пәндерін біріктіру үшін қолданылатын кең термин. Сондай-ақ, бұл термин білім беру үдерісіне көзқарасты білдіреді, оған сәйкес білім алудың негізі ғылыми құбылыстарын қарапайым және қол жетімді білім алуды жеңілдетеді және процестерді терең түсінуге көмектеседі. STEM аббревиатурасы 2001 жылы АҚШ-тың Ұлттық ғылым қорының (АҚШ үкіметі жанындағы тәуелсіз агенттік, медицинадан басқа ғылымның барлық салаларында фундаменталды зерттеулер мен білім беруді ұсынатын) ғалымдары білім беру және кәсіптік салалардағы тенденцияны белгілеу үшін ұсынылған.',
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.workspace_premium, size: 16, color: Colors.yellow,),
                          Text('S.T.E.M.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                    ),
                    // Container(
                    //   child: TextButton(
                    //     onPressed: () {},
                    //     child: Text('Смотреть все'),
                    //   ),
                    // ),
                  ],
                )
            ),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                ),
                items: [
                  Container(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue,
                                child: Text("S"),
                            ),
                            title: const Text('Since'),
                            subtitle: Text(
                              'Ғылым',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Ғылым дегеніміз — адамның табиғат, коғам және өзінің танымы туралы...',
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Толық көру')
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Text("T"),
                            ),
                            title: const Text('Technology'),
                            subtitle: Text(
                              'Технология',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Жалпы өндірістік процестің бөлігі болып табылатын өндіру, тасымалдау, сақтау, бақылау...',
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Толық көру')
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Text("E"),
                            ),
                            title: const Text('Engineering'),
                            subtitle: Text(
                              'Инженерия',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Инженерия (инженерия) адамның интеллектуалдық әрекетінің саласы, пән, кәсіп...',
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Толық көру')
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Text("M"),
                            ),
                            title: const Text('Mathematics'),
                            subtitle: Text(
                              'Математика',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Математика абстрактілендіру және логикалық қорыту: есептеу, санау,... ',
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Толық көру')
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text('Барлық жобалар', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Барлығын көру'),
                      ),
                    ),
                  ],
                )
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://researchparent.com/wp-content/uploads/Coding-a-Lego-Maze.jpg',
                        height: 90.0,
                        width: 90.0,
                      ),
                    ),
                    title: Text('LEGO® лабиринтін кодтау'),
                    subtitle: Text('Бұл әрекетте балалар кодтау негіздерін үйрене бастайды. ResearchParent ұсынған...'),
                    isThreeLine: true,
                    trailing: IconButton(onPressed: () {}, icon: Icon(Icons.star_border),),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://cdn.babbledabbledo.com/wp-content/uploads/2014/01/Crystal-Suncatchers-BABBLE-DABBLE-DO-title4.jpg',
                        height: 90.0,
                        width: 90.0,
                      ),
                    ),
                    title: Text('Кристалл күн ұстағыштары'),
                    subtitle: Text('Тұзбен кристалдар жасау - бұл балалардың танымал ғылыми әрекеті - бұл жақсы себеп!...'),
                    isThreeLine: true,
                    trailing: IconButton(onPressed: () {}, icon: Icon(Icons.star_border),),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://littlebinsforlittlehands.com/wp-content/uploads/2016/03/1-13-768x1152.jpg',
                        height: 90.0,
                        width: 90.0,
                      ),
                    ),
                    title: Text('Қол иінді лебедканы құрастыру'),
                    subtitle: Text('Бұл STEM жобасы айлакерлікті жақсы көретін балаларға өте ыңғайлы...'),
                    isThreeLine: true,
                    trailing: IconButton(onPressed: () {}, icon: Icon(Icons.star_border),),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://lemonlimeadventures.com/wp-content/uploads/2015/04/Engineering-with-Jelly-Beans.jpg',
                        height: 90.0,
                        width: 90.0,
                      ),
                    ),
                    title: Text('Jellybean ғимараты'),
                    subtitle: Text('Сізге тек желе бұршақтары (немесе үлкен зефир) мен тіс шұқығыштары қажет ...'),
                    isThreeLine: true,
                    trailing: IconButton(onPressed: () {}, icon: Icon(Icons.star_border),),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://tinkerlab.com/wp-content/uploads/2014/07/DSC04598.jpg',
                        height: 90.0,
                        width: 90.0,
                      ),
                    ),
                    title: Text('Stop-Motion анимациялық бейне'),
                    subtitle: Text('Шығармашылық STEM оқытудың тамаша нұсқасы...'),
                    isThreeLine: true,
                    trailing: IconButton(onPressed: () {}, icon: Icon(Icons.star_border),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
