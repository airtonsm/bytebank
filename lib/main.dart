import 'package:flutter/material.dart';

void main() => runApp(Column(
      children: [
        const Text(
          'Deliver features faster',
          textDirection: TextDirection.ltr,
        ),
        const Text(
          'Craft beautiful UIs novo teste',
          textDirection: TextDirection.ltr,
        ),
        Column(
          children: const [
            Text(
              'Texto esperado',
              textDirection: TextDirection.ltr,
            ),
          ],
        )
      ],
    ));

// parei na aula 08