import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

void main() {
  runApp(MaterialApp(
    home: TimelinePage(),
  ));
}

class TimelinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Event> events = [
      Event(
          title: 'Proposta Comercial',
          date: '30 Mar',
          description: 'Apresentação dos serviços e custos do projeto.',
          iconData: Icons.attach_money,
          completed: true),
      Event(
          title: 'Assinatura do Contrato',
          date: '31 Mar',
          description: 'Formalização do acordo entre as partes.',
          iconData: Icons.assignment,
          completed: true),
      Event(
          title: 'Aprovação de Financiamento',
          date: '01 Abr',
          description:
              'Etapa de aprovação do financiamento pelo time de backoffice',
          iconData: Icons.account_balance,
          completed: true),
      Event(
          title: 'Pagamento de Entrada',
          date: '02 Abr',
          description: 'Efetuar o pagamento inicial do projeto.',
          iconData: Icons.payment,
          completed: false),
      Event(
          title: 'Visita Técnica',
          date: '03 Abr',
          description: 'Avaliação do local para planejamento do sistema.',
          iconData: Icons.build,
          completed: false),
      Event(
          title: 'Faturamento',
          date: '04 Abr',
          description:
              'Emissão de fatura para pagamento das etapas concluídas.',
          iconData: Icons.description,
          completed: false),
      Event(
          title: 'Logística',
          date: '05 Abr',
          description: 'Separação e envio dos equipamentos para instalação.',
          iconData: Icons.local_shipping,
          completed: false),
      Event(
          title: 'Instalação',
          date: '06 Abr',
          description: 'Montagem do sistema fotovoltaico no local.',
          iconData: Icons.settings,
          completed: false),
      Event(
          title: 'Homologação do Sistema',
          date: '07 Abr',
          description: 'Inspeção e certificação do sistema instalado.',
          iconData: Icons.check_circle,
          completed: false),
      Event(
          title: 'Início da Produção',
          date: '08 Abr',
          description: 'Ativação do sistema para geração de energia.',
          iconData: Icons.solar_power_outlined,
          completed: false),
    ];

    var onBackButtonPressed;
    return Scaffold(
      appBar: null,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed:
                      onBackButtonPressed ?? () => Navigator.of(context).pop(),
                  color: Colors.black,
                ),
                const SizedBox(width: 8),
                const Text(
                  'Status do Projeto',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Timeline.tileBuilder(
              theme: TimelineThemeData(
                connectorTheme: const ConnectorThemeData(
                  space: 30.0,
                  thickness: 1.0,
                ),
                nodePosition: 0.1,
              ),
              builder: TimelineTileBuilder.connected(
                connectionDirection: ConnectionDirection.before,
                itemCount: events.length,
                contentsBuilder: (context, index) {
                  Event event = events[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0, left: 8.0),
                          child: Text(
                            event.title,
                            style: const TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 19, 49, 73),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, bottom: 20.0, right: 50.0),
                          child: Text(
                            event.description,
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.grey[600]),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                indicatorBuilder: (context, index) {
                  Event event = events[index];
                  return Column(
                    children: [
                      DotIndicator(
                        color: event.completed
                            ? Colors.orange
                            : const Color.fromARGB(255, 27, 39, 49),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              color: event.completed
                                  ? Colors.orange
                                  : const Color.fromARGB(255, 65, 93, 116),
                              width: 1.0,
                            ),
                          ),
                          child: Icon(
                            event.iconData,
                            color: event.completed
                                ? Colors.orange
                                : const Color.fromARGB(255, 65, 93, 116),
                            size: 20.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 0),
                      Text(
                        event.date ?? '',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: event.completed
                              ? Colors.orange
                              : Colors.grey[600],
                        ),
                      ),
                    ],
                  );
                },
                connectorBuilder: (context, index, type) {
                  if (index > 0) {
                    return events[index].completed
                        ? const SolidLineConnector(color: Colors.orange)
                        : const DashedLineConnector(
                            color: Color.fromARGB(255, 65, 93, 116));
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Event {
  final String title;
  final String? date;
  final String description;
  final IconData iconData;
  final bool completed;

  Event({
    required this.title,
    required this.description,
    this.date,
    required this.iconData,
    required this.completed,
  });
}
