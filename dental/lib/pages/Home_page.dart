import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dental/components/my_button.dart';
import 'package:dental/components/my_textfield.dart';
import 'package:dental/pages/register_page.dart';
import 'package:flutter/services.dart';

import '../model/Search.dart';
import 'Search_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  List<Search> searchs = allSearch;

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // welcome back, you've been missed!
              Text(
                'Bem vindo!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      hintText: 'Pesquisar'),
                  onChanged: searchItens,
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: searchs.length,
                  itemBuilder: (context, index) {
                    final search = searchs[index];

                    return ListTile(
                      title: Text(search.termo),
                      onTap: () => Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => SearchPage(search: search))),
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

  void searchItens(String query) {
    final suggestions = allSearch.where((search) {
      final searchTitle = search.termo.toLowerCase();
      final input = query.toLowerCase();

      return searchTitle.contains(input);
    }).toList();

    setState(() => searchs = suggestions);
  }
  
  void setState(List<Search> Function() param0) {}
}
