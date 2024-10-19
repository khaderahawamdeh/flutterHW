import 'package:flutter/material.dart';

class QuickActionsRow extends StatelessWidget {
  const QuickActionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        QuickActionIcon(icon: Icons.account_balance_wallet, label: 'Wallet'),
        QuickActionIcon(icon: Icons.local_shipping, label: 'Delivery'),
        QuickActionIcon(icon: Icons.message, label: 'Message'),
        QuickActionIcon(icon: Icons.attach_money, label: 'Service'),
      ],
    );
  }
}


class QuickActionIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const QuickActionIcon({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey.shade200,
          child: Icon(icon, size: 30, color: Colors.black),
        ),
        const SizedBox(height: 8.0),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.black),
        ),
      ],
    );
  }
}