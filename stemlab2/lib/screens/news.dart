import 'package:flutter/material.dart';
import 'package:stemlab2/screens/news_util.dart';

class NewsPage extends StatefulWidget {
  static const routeName = '/news';
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(5.0),
      children: <Widget>[
        CustomListItemTwo(
          thumbnail: Container(
            child: Image.network('https://ppu.edu.kz/novosti2/022222222.jpg'),
          ),
          title: '«STEM DAY – 2023» ЖОБАЛАР КОНКУРСЫ АЯҚТАЛДЫ',
          subtitle: 'Ә.Марғұлан атындағы Павлодар педагогикалық университетінде алғаш рет республикалық «STEM DAY – 2023» стем-жобалар конкурсы өтті. ',
          author: 'Dash',
          publishDate: '21.04.2023',
          readDuration: '5 күн',
          button: 'Толық көру',
        ),
        CustomListItemTwo(
          thumbnail: Container(
            child: Image.network('https://syrboyi.kz/wp-content/uploads/2023/01/12-2048x1365.jpg'),
          ),
          title: 'STEM-білім беру – зерттеуге негізделген оқыту тәсілі',
          subtitle: 'Филиал тренері Жанар Жұбауова оқытуды интеграциялық және пәнаралық тұрғыда қарастыру қажеттілігін Қызылорда облысының шығармашыл химия пәні мұғалімдері үшін ұйымдастырылған семинар-практикумда көрсетті...',
          author: 'Flutter',
          publishDate: '26.01.2023',
          readDuration: '3 ай',
          button: 'Толық көру',
        ),
        CustomListItemTwo(
          thumbnail: Container(
            child: Image.network('https://baq.kz/storage/cache_resize/news/2021/03/16/NdpbU9By0QyqV71hWoGWZ5GNT5UhLVabsX9OtlAa.jpg_width=1200Xheight=autoXtype=1.webp'),
          ),
          title: 'STEM-нің үздік жобалары пилоттық режимде іске асырылуы мүмкін',
          subtitle: 'Нұр-Сұлтан, BAQ.KZ. 2021 жылы республикалық STEM олимпиадасын өткізу жоспарланып отыр. Онда ұсынылатын үздік жобалар елордада пилоттық режимде іске асыру мүмкіндігіне ие болады...',
          author: 'Dash',
          publishDate: '16.03.2023',
          readDuration: '19:50',
          button: 'Толық көру',
        ),
        CustomListItemTwo(
          thumbnail: Container(
            child: Image.network('https://ppu.edu.kz/novosti2/022222222.jpg'),
          ),
          title: '«STEM DAY – 2023» ЖОБАЛАР КОНКУРСЫ АЯҚТАЛДЫ',
          subtitle: 'Ә.Марғұлан атындағы Павлодар педагогикалық университетінде алғаш рет республикалық «STEM DAY – 2023» стем-жобалар конкурсы өтті. ',
          author: 'Dash',
          publishDate: '21.04.2023',
          readDuration: '5 күн',
          button: 'Толық көру',
        ),
        CustomListItemTwo(
          thumbnail: Container(
            child: Image.network('https://elorda.info/_next/image?url=https%3A%2F%2Fcms.elorda.info%2Fuploads%2F61a492b20e293115234490_9bde9a0207.jpeg&w=1200&q=75'),
          ),
          title: 'Елордада республикалық STEM-олимпиадасы өтті',
          subtitle: 'Нұр-Сұлтанда 8-11-сынып оқушыларының қатысуымен екі күндік республикалық STEM-олимпиадасы өтті. Іс-шараға еліміздің барлық өңірінен 200-ден астам оқушы қатысты, деп хабарлады...',
          author: 'Dash',
          publishDate: '24.02.2023',
          readDuration: '19:04',
          button: 'Толық көру',
        ),
        CustomListItemTwo(
          thumbnail: Container(
            child: Image.network('https://ppu.edu.kz/novosti2/022222222.jpg'),
          ),
          title: '«STEM DAY – 2023» ЖОБАЛАР КОНКУРСЫ АЯҚТАЛДЫ',
          subtitle: 'Ә.Марғұлан атындағы Павлодар педагогикалық университетінде алғаш рет республикалық «STEM DAY – 2023» стем-жобалар конкурсы өтті. ',
          author: 'Dash',
          publishDate: '21.04.2023',
          readDuration: '5 күн',
          button: 'Толық көру',
        ),
      ],
    );
  }
}
