import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:instyl/screens/main_menu.dart';
import '../constants.dart';


class TopicsPageScreen extends StatefulWidget {
  static const routeName = '/topics_screen';
  const TopicsPageScreen({
    Key? key,
  }) : super(key: key);

  @override
  _TopicsPageScreenState createState() => _TopicsPageScreenState();
}

class _TopicsPageScreenState extends State<TopicsPageScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  GlobalKey<FormState> loginInKey = GlobalKey<FormState>();

  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  List<Map<String, dynamic>> topicsList = [
    {
      'title': 'Women\'s fashion',
      'img':
          'https://s3-alpha-sig.figma.com/img/abcc/10b1/a9256cc76fd4787ef2f4fffd7662d601?Expires=1663545600&Signature=a1oDnZZkdRb4H-1WMBMW5hEDM-2kFA-jlC9k-XU4ZVOp3lK2TtyhE8dcJvTd-osEz74ce5gmofhuDe4pW0PYK9h6CQ4La3x1K43tjYzUZK8xflPtR2eUoZeOU92WiJAMar1Qt0a67LG4Pd-~qxnvNI~Jt0AgyeJYZo4MWl47sLBPyVeHvUXEXs9WXVQp7BZXCI3Ow1dj3ObzRi7U9MUQQmw8QabPsDgzFpGuRFZyf~-yxvuGPSAjbiipitOrXD8U7YD9Vag2AorCfLHgZt7ifXiIXoi1ZVKWBIhGuHdOb~gctaiwTE1JuYg5vZ15lHdJLCWZNP6PUAO3Jqf5MUCHQw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    },
    {
      'title': 'Mens fashion',
      'img':
          'https://s3-alpha-sig.figma.com/img/d4c1/299d/7a99849c7e5bc1e5e8407113f87952a0?Expires=1663545600&Signature=Q33s-BAd2tPKoNxGu-15s5DlaGokS1v3noZC4h3nToTa8lcRzZl2OciGGfDIoPYfy7jvtF0iYUE9CfX4MEKyVHgcA2po5-GFH2MRz0~AkPcgBHIMO1gYCtn8Ua01ENnWyfawtiPMeYqtVDQ3vRgB6M~I9HTKmmC0hWtzibvyh7yPbo3ZErcsf6b1fdu55eDquZKLbX2HV5TXJ6yr5Gq4VKO7Ns0SYYnSIW8w7YsjbSM6~Jin62SU~gyl6ZZ5mQ5iJ6Nrj6qB7letl8XV7JM0sY3PXkDDTDtixb0cTYqEuZs6UsBHZeUIztGzaxqKpn9Sk~QuZSNSPAi5zWOHNG56Iw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Street Style',
      'img':
          'https://s3-alpha-sig.figma.com/img/4ad7/a71e/cb63a195cf20965a5431357aa18e2989?Expires=1663545600&Signature=fvLv0lVsjNiO13O91ZSzzJepc23VXP9pLRiqY98mu9uO814dDyr0CN2DJ2FVn-mBj2pwZo5CUSxXSVbNzTIEShDLDOAXMT0iZ2ELV2zyjhspUK7a1sh1yMlt-UijeVzE3~ySskouTUKhwVYxO7MkZp7ckQ0mCFrrZcc479kVIKAmP7IdiHXqzvkt1mwxxZ4bxpg69vj3SMR~53NpkDo417Hp64jKP8JyxbMKZ1v84UPfNVfA9XWiMGKrHhz04AmcleoorYwTzb6zMRRrG31mSxFg1oQVqJ6gPNqVbrL-MotdMYGtFLLF0m7xHqpZa~TiZI-BXOlXBeM6~YHkoX3ZPQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Dresses',
      'img':
          'https://s3-alpha-sig.figma.com/img/b545/bc92/8cdee8e6cd62166c5a695121a00476c7?Expires=1663545600&Signature=ezPxCjJyd8gMLUamJdUvZrSBFKypmQxQWVRUee1gxOFlz~v2cpBP2xH22oLK87TIhRPxelZOiKX9gZKOyHniVuAc17m7k0ASiPkV6k0WHnr2z7tRj8-Um6NmqK1CpjYStidxN9npigHzGIn2git3eNg397w-rq8QakkmLbqQv2ANLzjiv6x1CIksaAJ0CUUe5yqpGyDJnRZEEXvvKYrIowF2gibCzzpW41REnU~mTG3MHtqFCOUDAwpWq8khTMuL31Pd3GFR0ln7pMhy~kUo23LGgH3pqKGKGOnxhVdUHqkSKjMOE5FZiEf-ffEngyYK9r2aHs5bu2~jzArwg5QbmA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Wedding Outfits',
      'img':
          'https://s3-alpha-sig.figma.com/img/a911/9d7e/c33425f8f00d48432741e59d70ab3b06?Expires=1663545600&Signature=D5fxuIOC8lpjEaM52U7CMoOJjNlyaZxdoxSDJEmPJBR8m8N8zj2ZHOJEN3uEgjvQPFsZjmxL~hT1TeaJn2ct8V9Z~bCOJ-cW~s6aKU-UU2Tqvi13d1Z5o8qLS3N2-wNyS9gW2pXpO6sycRwbT9D5HoKGmaWyTsfwJQQ8Kfz-gjsA-FCYtxbsar2oItde-YKPqed5-5aIRgR~wNfanQ5-2RLIMUpJ7jtSIB5q8E6fAoz-bCANpEQainREavtCstiNzwV6Vysow4pwOp8jn8lq93xJ5ir3Pg-AotXWnvLzUJ0Qu3NrrFGlIRJ4th3tBOODBjgGtkXChz5VtwEdWhGLNw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Outfit Ideas',
      'img':
          'https://s3-alpha-sig.figma.com/img/3a7e/b565/1f5700602227a5e0bf608f35c918d0b6?Expires=1663545600&Signature=f3mnLI4SCHyNLUqeojBZGI6Vv0GdC7oXtlmMqCLnTA54bDHidkIlsbEQYZbcro9wR~SJ0zQTQuAkWBUF-0gnj1hlT33fnYryhGUmE-ALARSysxyX6UlH-T5aZQmbFSGNBflqeSChchjpho13hy2~YQXKMJ1TVIoLQ88aBF-Q51HMeyqc6C~yMM2xJ7X8ixRjgdFlf3C1GoQLbDXfIxiA3gm5WvDESgYwAl1ZMI5vwYJAThLsVwPyzKY72ibVBfNNonC3laHDPPZfiJR97-OtNQxYoF0aib2ZWYpSfW6mHwoCow5aF-qyfvVYwZjOEoVEkvvIAT6q9KQ6MuVAGP5F4Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Summer',
      'img':
          'https://s3-alpha-sig.figma.com/img/ee06/0dcd/deaf546c49383e80bf469ccbc46f380f?Expires=1663545600&Signature=bNUFJo3oZdZD6H99SL03tyjetzNlJTw4gTy8L6G83bYMP~TxNfzG13RgabW1XlD~2S4Tvl0INCNqNYismCugFBrVOH13xSqfrEQXecg~hwqW5XhkbH~6vO9PiGoHismcemhLiZu2EmtNKvj7zItS6lEHqPW~YZuszAj5b6krkTtHAyg4wVlm6A99nhti3pUC1yxPFbMAerpM3Bp52BsyJomGTigVHCbsVF6zOhrdLoASGXnTEq1KVosx8gYFuDI7RTOOoL6dDTXtneXLHL6Imys-wdmYZlkCD8de1QlVpQEqkd3GEStDx81RGgnmLd7E2s-xI6vcAJ-MLKhk7ym0CA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Beauty',
      'img':
          'https://s3-alpha-sig.figma.com/img/df46/3ed2/ebd863a47fd02aec180053d71bb1236f?Expires=1663545600&Signature=hiZFHRbhTbjZp2w5uvQzfvqhJDjDCzUJ7WZfdMhHpoIlsojZNqL0O3-EaJCsrc2TyejMwbb0V-BIoULVqbwJD2mG~MkuKuYmKKpOfo4zKuXaN6M7QvV5oAFv7d8uRnxtXOs9SznIEkNwcnvXmi581FClV9cGR03VFWC9H2X0RO8R9edKRntoycGGFiMSuMdVVEcFxiH4MvczOyhIMLqinROBJ3n27GFPSljLUWyETlO273SqfIUeu-UOowYnIaaUQnN5BAVfeeoWTM9Ks~yhgDs1a~SSgXIuiAm6F3zXBjK11LXtiBk75f23cvFzVcR8kbm23VwUtbPJNIHvxZtftw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Smart Casual',
      'img':
          'https://s3-alpha-sig.figma.com/img/7386/fd20/9699c4f578677d4c7de86613669c0134?Expires=1663545600&Signature=dbHx4DMpeApLL8RKl8v657HuIgItjkesnpbYr4uYaAgWXslEhDYqlGov4Ved~X7NETbc~ixjQ5PdHcoiW49w2pQzABxdwJgVuiKNBgbiWoNFTW0OX8UBW6EUTrHsDRsN1FoKFBE-V-AwI7~S8dW5PzoVqTVLZEklfmlStEgGbuAC-~rwbXkrmpwigv3kBQ3LEgR~coreN4AEAqqsR57ubIWlnWmVyA~SH0i2UyEnrGS0qr-tOe6tXifnYXjPu4FdGlL0DgOxn9vUZV50zZOkOLeHcqNIGPvqz7O2LGPl3E2bx2Qx28yCoy4WmWuYJdZto58HB2AJsq57PtsKSAuZ0Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
    {
      'title': 'Hairstyles',
      'img':
          'https://s3-alpha-sig.figma.com/img/55a3/85dd/3de78ed15e095b8b5dec6f41180b756f?Expires=1663545600&Signature=KxttVs~MgkXMHWOR~azyvdrxtj7JewQjH1l-5MMJnXZldZZeuwGAxopxYYcoMrkD6Cz2DrQfvfsFU2DCVZFaDkLK~ZJwi6vn~-mFTGXlqwoAOhAxVYFvZ2NCF4wWdntQ~g1RWNruThYc6inSeELFRn9IKY7h7y1-ZBwRZos6Q7yotxA2CqEPKbUnACKlrH~nTwl~uCdlUWSxj-AOmCS2pSaVnCraX5v9QZddBmgiP0rmhRtPmtdk7yQdaIyN59kf21srvJnLP3srnsL6aXvkxX3kaiS2YAawExPSc5qTXLd9Q18VMfDTACvtOyJO5b44zxbxWzBB3C82S~DzSdoLkQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kBgColor,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const MainMenu()));
            },
            child: Row(
              children: [
                Text(
                  'Skip',
                  style: kBodyStyle3,
                ),
                Image.asset(
                  'assets/skip.png',
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Welcome',
                style: kHeadingStyle3,
              ),
              Text(
                'Let’s choose some topics',
                style: kHeadingStyle4,
              ),
              SizedBox(
                height: 30.h,
              ),
              GridView.builder(
                  itemCount: topicsList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.4,
                    crossAxisSpacing: 10.0,
                  ),
                  itemBuilder: (context, index) {
                    return TopicCard(
                        title: topicsList[index]['title'],
                        img: topicsList[index]['img'],
                        onPress: () {});
                  }),
              SizedBox(
                height: 30.h,
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    'See More',
                    style: kBodyStyle5,
                  )),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopicCard extends StatelessWidget {
  const TopicCard({
    Key? key,
    required this.title,
    required this.img,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final String img;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
          child: Container(
            height: 127.h,
            width: size.width / 2 - 25.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: NetworkImage(
                  img,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
          child: InkWell(
            onTap: onPress,
            child: Container(
              height: 127.h,
              color: Colors.black.withOpacity(0.5),
              width: size.width / 2 - 25.w,
              child: Center(
                child: Text(
                  title,
                  style: kBodyStyle4,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
