import 'package:flutter/material.dart';

class MyRequest extends StatelessWidget {
  final VoidCallback? onBackButtonPressed;
  final List<RequestCardModel> cards = [
    RequestCardModel(
      title: 'Título do chamado',
      protocol: '123456',
      date: '01.05.2024',
      description: 'Descrição do chamado 1',
      status: RequestStatus.ongoing,
    ),
    RequestCardModel(
      title: 'Título do chamado',
      protocol: '789012',
      date: '02.05.2024',
      description: 'Descrição do chamado 2',
      status: RequestStatus.resolved,
    ),
  ];

  MyRequest({
    this.onBackButtonPressed,
  });

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
                      'Meus chamados',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              if (cards.isNotEmpty)
                const Center(
                  child: Text(
                    'Acesse seus chamados ou crie um novo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              Column(
                children: [
                  for (var card in cards) ...[
                    const SizedBox(height: 20),
                    Center(
                      child: Container(
                        // width: MediaQuery.of(context).size.width * 0.8,
                        width: MediaQuery.of(context).size.width * 8,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 216, 216, 216)),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              card.title,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '#Protocolo: ${card.protocol}',
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 133, 141, 193),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const SizedBox(width: 4),
                                    Text(
                                      card.date,
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(card.description),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: card.status == RequestStatus.ongoing
                                        ? Colors.blue
                                        : Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    card.status == RequestStatus.ongoing
                                        ? 'Em andamento'
                                        : 'Resolvido',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Icon(Icons.visibility),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
              if (cards.isEmpty)
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Você ainda não tem nenhum chamado aberto!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Image.asset(
                        './assets/people.png',
                        width: 300,
                        height: 300,
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 110,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      backgroundColor: Colors.blue.shade600,
                    ),
                    child: const Text(
                      '+ Novo Chamado',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
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

enum RequestStatus {
  ongoing,
  resolved,
}

class RequestCardModel {
  final String title;
  final String protocol;
  final String date;
  final String description;
  final RequestStatus status;

  RequestCardModel({
    required this.title,
    required this.protocol,
    required this.date,
    required this.description,
    required this.status,
  });
}
