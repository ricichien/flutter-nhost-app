import 'package:flutter/material.dart';

class Notification {
  final String title;
  final String description;
  final String date;
  final IconData icon;
  final Color iconColor;

  Notification({
    required this.title,
    required this.description,
    required this.date,
    required this.icon,
    required this.iconColor,
  });
}

class VectorWidget extends StatelessWidget {
  final List<Notification> notifications = [
    Notification(
      title: 'Título',
      description:
          'Este é o texto da sua notificação. Algo que aconteceu e você precisa saber',
      date: '12 jul',
      icon: Icons.notification_important,
      iconColor: Colors.blue,
    ),
    Notification(
      title: 'Título',
      description:
          'Este é o texto da sua notificação. Algo que aconteceu e você precisa saber',
      date: '12 jul',
      icon: Icons.flag,
      iconColor: Colors.orange,
    ),
    Notification(
      title: 'Título',
      description:
          'Este é o texto da sua notificação. Algo que aconteceu e você precisa saber',
      date: '12 jul',
      icon: Icons.error,
      iconColor: Colors.red,
    ),
    Notification(
      title: 'Título',
      description:
          'Este é o texto da sua notificação. Algo que aconteceu e você precisa saber',
      date: '12 jul',
      icon: Icons.info,
      iconColor: Colors.green,
    ),
    Notification(
      title: 'Título',
      description:
          'Este é o texto da sua notificação. Algo que aconteceu e você precisa saber',
      date: '12 jul',
      icon: Icons.settings,
      iconColor: Colors.grey.shade700,
    ),
  ];

  VectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(
            'Notificações',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: const BorderSide(color: Colors.grey, width: 0.3),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            notifications[index].icon,
                            color: notifications[index].iconColor,
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            notifications[index].title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Text(
                            notifications[index].date,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        notifications[index].description,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
