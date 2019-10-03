import 'package:crashcourse/models/LocationFacts.dart';

import '../models/Location.dart';
class MockLocation extends Location{


  static final List<Location> items =[
  Location(
    name:'Arashiyama Bamboo Grove',
    url: 'https://photos.smugmug.com/i-hFcX6RC/0/1c58ee68/L/famous-bamboo-grove-arashiyama-L.jpg',
    facts: <LocationFacts>[

      LocationFacts(
        title: 'Summary',
        text: 'While we could go on about the ethereal'
        'glow and seemingly endles heights of this'
        'bamboo grove on the outskirts of Kyoto ''the sight\s pleasures extend beyond the '
        'visual realm '
        ),

        LocationFacts(
          title: 'How to get There',
          text: 'Kyoto airport, with several terminals, is '
          'locates 16 kilometers south of the city '
          'and is also known as Kyoto, Kyoto can aslo '
              'be reached by transport links from other '
           'regional airports'
          )
          ]
        ),
  Location(
    name:'Zacatecas',
    url: 'https://www.visitmexico.com/viajemospormexico/assets/uploads/destinos/zacatecas_destinos-principales_zacatecas_01.jpg',
      facts: <LocationFacts>[
        LocationFacts(
        title: 'Summary',
        text: 'Zacatecas has the meaning of the land of the grass. In the past, people were used to wandering and hunt. Most of them lived near to Guadiana Rivers, Graceros, and Suchil. Today, there are many archeological sites related to those people..'
        ),

        LocationFacts(
          title: 'How to get There',
          text: 'Zacatecas is located in central Mexico. It is near to Aguascalientes. Apart from its beauty, you need to know more about it. Here is the list of facts about Zacatecas.'
        )
      ]
      ),
    Location(
        name:'Jerezn',
        url: 'https://www.am.com.mx/__export/1548881420035/sites/am/img/2018/10/24/conoce-la-magia-pueblerina-de-jerez-c62ffc2158e64e3cd83739127586ed38.jpg_851672003.jpg',
        facts: <LocationFacts>[
          LocationFacts(
              title: 'Summary',
              text: 'It is the commercial and manufacturing centre for an agricultural and pastoral hinterland in which beans, quince, and apples are the principal crops and horses, pigs, sheep, and, most commonly, cattle, are the principal livestock.'
          ),

          LocationFacts(
              title: 'How to get There',
              text: 'Jerez de García Salinas, city, south-central Zacatecas estado (state), north-central Mexico. Formerly known simply as Jerez, the city is on the Jerez River'
          )
        ]
    ),

  ];
  static Location FetchAny(){

    return MockLocation.items[10];
  }


  static List<Location> fetchAll(){
    return MockLocation.items;
  }
}