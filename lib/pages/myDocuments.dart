import 'package:flutter/material.dart';

class MyDocuments extends StatelessWidget {
  final VoidCallback? onBackButtonPressed;

  const MyDocuments({
    super.key,
    this.onBackButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
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
                    'Meus documentos',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              child: Text(
                'Gerencie seus contratos assinados e documentos',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Card(
              elevation: 4,
              shadowColor: Colors.grey.withOpacity(0.9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Stack(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.person,
                          size: 40,
                          // color: Colors.blue,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Identificação',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Faça o upload da sua conta de luz e dos documentos de identificação do responsável',
                          style: TextStyle(
                            fontSize: 16,
                            // color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.green.shade700,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Text(
                          'Enviado',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              shadowColor: Colors.grey.withOpacity(0.9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.file_copy_rounded,
                      size: 40,
                      // color: Colors.blue,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Meu Contrato',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Baixe ou visualize a qualquer momento o contrato do seu projeto solar.',
                      style: TextStyle(
                        fontSize: 16,
                        // color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              shadowColor: Colors.grey.withOpacity(0.9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.house_outlined,
                      size: 40,
                      // color: Colors.blue,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Visita técnica',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Para fazer sua visita técnica, vamos precisar de documentos como: ',
                      style: TextStyle(
                        fontSize: 16,
                        // color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              shadowColor: Colors.grey.withOpacity(0.9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.solar_power_sharp,
                      size: 40,
                      // color: Colors.blue,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Engenharia',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Para homologar seu sistema, será necessário: ',
                      style: TextStyle(
                        fontSize: 16,
                        // color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
