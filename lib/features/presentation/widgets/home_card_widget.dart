import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
  final String? firstName;
  final String? lastName;
  final String? image;
  final String? email;
  const HomeCardWidget({super.key, this.firstName, this.lastName, this.image, this.email});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 50, // Radius for the circular image
                  backgroundImage: NetworkImage(image ?? ''), // Your image URL or asset
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(firstName ?? ''),
                  Text(lastName ?? ''),
                  Text(email ?? ''),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
