import 'package:flutter/material.dart';

class FaqCentral extends StatelessWidget {
  final VoidCallback? onBackButtonPressed;

  const FaqCentral({
    Key? key,
    this.onBackButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: onBackButtonPressed ??
                          () => Navigator.of(context).pop(),
                      color: Colors.black,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Perguntas Frequentes',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Confira as principais perguntas sobre Energia Solar e tire suas dúvidas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ExpansionTile(
                  title: Text(
                    'O que é?',
                    style: TextStyle(),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      child: Text(
                        'Um sistema de energia solar converte a luz solar em eletricidade por meio de painéis fotovoltaicos, que geram energia quando expostos à luz do sol. Essa eletricidade pode ser usada para alimentar sua casa ou empresa.',
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ExpansionTile(
                  title: Text(
                    'Quais são os benefícios?',
                    style: TextStyle(),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      child: Text(
                        'Os benefícios da energia solar incluem economia de custos com energia elétrica, redução da dependência de fontes de energia não renováveis, redução da emissão de gases de efeito estufa e valorização do imóvel.',
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ExpansionTile(
                  title: Text(
                    'Quais são os principais fatores que afetam o desempenho do sistema?',
                    style: TextStyle(),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      child: Text(
                        'Os principais fatores que afetam o desempenho incluem a orientação e inclinação dos painéis solares, sombreamento, sujeira e poeira, condições climáticas e qualidade dos componentes do sistema.',
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ExpansionTile(
                  title: Text(
                    'Se eu instalar um sistema de energia fotovoltaico e a rede da concessionária de energia cair, eu fico sem luz?',
                    style: TextStyle(),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      child: Text(
                        'Um sistema de energia solar converte a luz solar em eletricidade por meio de painéis fotovoltaicos. Esses painéis são compostos por células fotovoltaicas que absorvem a luz do sol e a convertem em corrente elétrica.',
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ExpansionTile(
                  title: Text(
                    'Com qual frequência preciso fazer limpeza nos painéis fotovoltaicos?',
                    style: TextStyle(),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      child: Text(
                        'Um sistema de energia solar converte a luz solar em eletricidade por meio de painéis fotovoltaicos. Esses painéis são compostos por células fotovoltaicas que absorvem a luz do sol e a convertem em corrente elétrica.',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
