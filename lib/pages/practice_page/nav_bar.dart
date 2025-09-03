import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.person, color: Color(0xFF19A7F2), size: 28),
              const SizedBox(width: 8),
              const Text(
                'SpeakRight',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              NavLink('Home', false, () {}),
              NavLink('Practice', true, () {}),
              NavLink('Lessons', false, () {}),
              NavLink('Community', false, () {}),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.notifications_none,
                color: Color(0xFFBFC2D5),
                size: 28,
              ),
              const SizedBox(width: 16),
              CircleAvatar(
                radius: 20,
                child: Image.network(
                  "https://randomuser.me/api/portraits/men/44.jpg",
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.error),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NavLink extends StatelessWidget {
  final String label;
  final bool active;
  final void Function()? onTap;
  const NavLink(this.label, this.active, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          label,
          style: TextStyle(
            color: active
                ? const Color(0xFF19A7F2)
                : Colors.white.withOpacity(0.8),
            fontWeight: active ? FontWeight.bold : FontWeight.normal,
            fontSize: 16,
            decoration: active ? TextDecoration.underline : TextDecoration.none,
            decorationColor: const Color(0xFF19A7F2),
            decorationThickness: 2,
          ),
        ),
      ),
    );
  }
}
