// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// // import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeWidget(),
//     );
//   }
// }

// class HomeWidget extends StatefulWidget {
//   @override
//   _HomeWidgetState createState() => _HomeWidgetState();
// }

// class _HomeWidgetState extends State<HomeWidget> {
//   final CarouselController _controller = CarouselController();
//   int _current = 0;

//   final List<String> imgList = [
//     'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//     'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//     'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//   ];

//   List<Widget> get imageSliders {
//     return imgList
//         .map((item) => Container(
//               margin: const EdgeInsets.all(5.0),
//               child: ClipRRect(
//                   borderRadius: const BorderRadius.all(Radius.circular(5.0)),
//                   child: Stack(
//                     children: <Widget>[
//                       Image.network(item, fit: BoxFit.cover, width: 1000.0),
//                       Positioned(
//                         bottom: 0.0,
//                         left: 0.0,
//                         right: 0.0,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [
//                                 Color.fromARGB(200, 0, 0, 0),
//                                 Color.fromARGB(0, 0, 0, 0)
//                               ],
//                               begin: Alignment.bottomCenter,
//                               end: Alignment.topCenter,
//                             ),
//                           ),
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 10.0, horizontal: 20.0),
//                           child: Text(
//                             'Text ${imgList.indexOf(item)}',
//                             style: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 20.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   )),
//             ))
//         .toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: null,
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Center(
//                 child: Text(
//                   'Olá Doulgas!',
//                   style: TextStyle(
//                     fontSize: 22,
//                   ),
//                 ),
//               ),
//               const Center(
//                 child: Text(
//                   'Bem-vindo ao portal do cliente Holu',
//                   style: TextStyle(
//                     fontSize: 22,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 width: double.infinity,
//                 child: Center(
//                   child: Text(
//                     'Aqui você encontrará todas as informações sobre o seu projeto em tempo real!',
//                     style: TextStyle(fontSize: 16),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               Column(
//                 children: [
//                   CarouselSlider(
//                     items: imageSliders,
//                     carouselController: _controller,
//                     options: CarouselOptions(
//                       autoPlay: true,
//                       enlargeCenterPage: true,
//                       aspectRatio: 2.0,
//                       onPageChanged: (index, reason) {
//                         setState(() {
//                           _current = index;
//                         });
//                       },
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: imgList.asMap().entries.map((entry) {
//                       return GestureDetector(
//                         onTap: () => _controller.animateToPage(entry.key),
//                         child: Container(
//                           width: 8.0,
//                           height: 8.0,
//                           margin: const EdgeInsets.symmetric(
//                               vertical: 8.0, horizontal: 4.0),
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: (Theme.of(context).brightness ==
//                                         Brightness.dark
//                                     ? Colors.white
//                                     : Colors.black)
//                                 .withOpacity(_current == entry.key ? 0.9 : 0.4),
//                           ),
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16),
//               SizedBox(
//                 height: 150,
//                 width: double.infinity,
//                 child: Stack(
//                   children: [
//                     Container(
//                       height: 150,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         color: Colors.blue.shade600,
//                       ),
//                     ),
//                     Positioned(
//                       right: 16,
//                       top: 0,
//                       bottom: 0,
//                       child: Image.asset(
//                         './assets/cart.png',
//                         fit: BoxFit.contain,
//                         height: 150,
//                         width: 150,
//                       ),
//                     ),
//                     Positioned(
//                       left: 16,
//                       top: 16,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             'Proposta do projeto pronta!',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                             ),
//                           ),
//                           const SizedBox(height: 4),
//                           SizedBox(
//                             width: MediaQuery.of(context).size.width - 200,
//                             child: const Text(
//                               'Clique aqui para visualizar ou acesse através da seção ‘comercial’ no menu!',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 16),
//               const SizedBox(height: 16),
//               GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 16,
//                 mainAxisSpacing: 16,
//                 shrinkWrap: true,
//                 children: const [
//                   CardWidget(
//                     title: 'Pagamentos',
//                     subtitle:
//                         'Escolha a melhor opção para você e faça o pagamento do projeto',
//                     color: Colors.white,
//                     iconData: Icons.payment,
//                   ),
//                   CardWidget(
//                     title: 'Meu Contrato',
//                     subtitle:
//                         'Acesse o contrato do seu projeto a qualquer momento',
//                     color: Colors.white,
//                     iconData: Icons.description,
//                   ),
//                   CardWidget(
//                     title: 'Central de Ajuda',
//                     subtitle:
//                         'Entre em contato com o nosso time, acompanhe seus chamados e tire suas dúvidas. ',
//                     color: Colors.white,
//                     iconData: Icons.help,
//                   ),
//                   CardWidget(
//                     title: 'Sobre a Holu',
//                     subtitle:
//                         'Saiba mais sobre nós, nossos parceiros e nossos projetos!',
//                     color: Colors.white,
//                     iconData: Icons.info,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CardWidget extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final Color color;
//   final Color? textColor;
//   final IconData? iconData;

//   const CardWidget({
//     required this.title,
//     required this.subtitle,
//     required this.color,
//     this.textColor,
//     this.iconData,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: color,
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (iconData != null)
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     iconData!,
//                     size: 36,
//                     color: Colors.black,
//                   ),
//                 ],
//               ),
//             const SizedBox(height: 8),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: textColor,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Text(
//                   subtitle,
//                   style: TextStyle(
//                     fontSize: 11,
//                     color: textColor,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Olá Doulgas!',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'Bem-vindo ao portal do cliente Holu',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Aqui você encontrará todas as informações sobre o seu projeto em tempo real!',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue.shade600,
                      ),
                    ),
                    Positioned(
                      right: 16,
                      top: 0,
                      bottom: 0,
                      child: Image.asset(
                        './assets/cart.png',
                        fit: BoxFit.contain,
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Proposta do projeto pronta!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 4),
                          SizedBox(
                            width: MediaQuery.of(context).size.width -
                                200, // Ajustando a largura do subtitle para evitar sobreposição com a imagem
                            child: const Text(
                              'Clique aqui para visualizar ou acesse através da seção ‘comercial’ no menu!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                shrinkWrap: true,
                children: const [
                  CardWidget(
                    title: 'Pagamentos',
                    subtitle:
                        'Escolha a melhor opção para você e faça o pagamento do projeto',
                    color: Colors.white,
                    iconData: Icons.payment,
                  ),
                  CardWidget(
                    title: 'Meu Contrato',
                    subtitle:
                        'Acesse o contrato do seu projeto a qualquer momento',
                    color: Colors.white,
                    iconData: Icons.description,
                  ),
                  CardWidget(
                    title: 'Central de Ajuda',
                    subtitle:
                        'Entre em contato com o nosso time, acompanhe seus chamados e tire suas dúvidas. ',
                    color: Colors.white,
                    iconData: Icons.help,
                  ),
                  CardWidget(
                    title: 'Sobre a Holu',
                    subtitle:
                        'Saiba mais sobre nós, nossos parceiros e nossos projetos!',
                    color: Colors.white,
                    iconData: Icons.info,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final Color? textColor;
  final IconData? iconData;

  const CardWidget({
    required this.title,
    required this.subtitle,
    required this.color,
    this.textColor,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (iconData != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconData!,
                    size: 36,
                    color: Colors.black,
                  ),
                ],
              ),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 11,
                    color: textColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
