import 'package:flutter/material.dart';

class KnowledgeCentral extends StatelessWidget {
  final VoidCallback? onBackButtonPressed;

  const KnowledgeCentral({
    super.key,
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
                      'Central de Conhecimento',
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
                  'Aqui você poderá retirar suas dúvidas de forma rápida e independente.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Card(
                  elevation: 4,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ListTile(
                        leading: Icon(Icons.solar_power_outlined),
                      ),
                      const ListTile(
                        // leading: Icon(Icons.dashboard),
                        title: Text(
                          'Meu Projeto',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            'Status do projeto',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            'Equipamentos',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            'Instalação',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            'Ver mais',
                            style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Card(
                  elevation: 4,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ListTile(
                        leading: Icon(Icons.money_outlined),
                      ),
                      const ListTile(
                        // leading: Icon(Icons.dashboard),
                        title: Text(
                          'Pagamentos',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            'Métodos de pagamento',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            'Valor de contrato',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            'Prazo de pagamento',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            'Ver mais',
                            style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Card(
                  elevation: 4,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ListTile(
                        leading: Icon(Icons.sunny),
                      ),
                      const ListTile(
                        // leading: Icon(Icons.dashboard),
                        title: Text(
                          'Energia Gerada',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            'Fatura de energia',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            'Taxa de disponibilidade',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            'Créditos',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            'Ver mais',
                            style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
