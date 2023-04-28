import 'package:dental/model/Search.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final Search search;

  const SearchPage({
    Key? key,
    required this.search,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // welcome back, you've been missed!
                Text(
                  search.termo,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),
                
                Text(
                  search.descricao,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
