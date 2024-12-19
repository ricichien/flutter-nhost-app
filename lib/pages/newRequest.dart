import 'package:flutter/material.dart';

class NewRequest extends StatelessWidget {
  final VoidCallback? onBackButtonPressed;

  const NewRequest({
    super.key,
    this.onBackButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final isWorkingHours = now.hour >= 18 && now.hour < 9;

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
                      'Add novo chamado',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              isWorkingHours
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Card(
                        color: Colors.deepOrange.shade100,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.warning,
                                color: Colors.deepOrange,
                              ),
                              const SizedBox(width: 8),
                              Flexible(
                                child: Text(
                                  'Nosso horário de atendimento é de segunda a sexta, entre 09:00 às 18:00. Você pode abrir seu chamado e responderemos o mais breve possível, dentro do nosso período de atendimento.',
                                  style: TextStyle(
                                    color: Colors.orange.shade900,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Center(
                        child: Text(
                          'Preencha os campos abaixo para abrir um novo chamado!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Selecione seu projeto',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField(
                      items: [],
                      onChanged: (value) {},
                      hint: const Text('Selecione...'),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Selecione...',
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Assunto',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Digite sua resposta...',
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Categoria',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField(
                      items: [],
                      onChanged: (value) {},
                      hint: const Text('Selecione...'),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Selecione...',
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Descreva com o máximo de detalhes possíveis o seu problema ou sua dúvida ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Digite sua resposta...',
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                            backgroundColor: Colors.green,
                          ),
                          child: const Row(
                            children: [
                              Text(
                                'Enviar',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
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
