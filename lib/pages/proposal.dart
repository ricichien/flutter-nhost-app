import 'package:flutter/material.dart';

class ProposalData {
  final String title;
  final String value;
  final VoidCallback? onBackButtonPressed;

  ProposalData({
    required this.title,
    required this.value,
    this.onBackButtonPressed,
  });
}

List<ProposalData> proposals = [
  ProposalData(
    title: 'Financiamento',
    value: 'R\$25.930,99',
  ),
  ProposalData(
    title: 'Personalizado',
    value: 'R\$32.485,56',
  ),
  ProposalData(
    title: 'Financiamento',
    value: 'R\$18.750,00',
  ),
  ProposalData(
    title: 'Personalizado',
    value: 'R\$40.200,75',
  ),
  ProposalData(
    title: 'Financiamento',
    value: 'R\$28.600,30',
  ),
  ProposalData(
    title: 'Personalizado',
    value: 'R\$36.800,95',
  ),
];

class Proposal extends StatelessWidget {
  final VoidCallback? onBackButtonPressed;

  const Proposal({
    super.key,
    this.onBackButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: onBackButtonPressed ??
                            () => Navigator.of(context).pop(),
                        color: Colors.black,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Proposta do seu sistema',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Entenda cada um dos diferenciais das propostas, compare e escolha qual faz mais sentido para sua casa e seu bolso.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: proposals.length,
                  itemBuilder: (context, index) {
                    const int totalImages = 4;
                    final int imageIndex = index % totalImages + 1;
                    return CardItem(
                      proposal: proposals[index],
                      imageIndex: imageIndex,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final ProposalData proposal;
  final int imageIndex;

  const CardItem({
    super.key,
    required this.proposal,
    required this.imageIndex,
  });

  @override
  Widget build(BuildContext context) {
    final String imageAsset = 'assets/proposal$imageIndex.png';

    return Card(
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
        child: Row(
          children: [
            Image.asset(
              imageAsset,
              height: 130,
              width: 130,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 60),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  proposal.title,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  proposal.value,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    side: BorderSide(color: Colors.blue),
                    backgroundColor: Colors.blue,
                  ),
                  child: Text(
                    'Ver mais',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Proposal(),
  ));
}
