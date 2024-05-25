import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mouaffo/datas.dart';
import 'package:mouaffo/json_transforme.dart';
import 'package:mouaffo/show_dialog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Card(
                    elevation: 12,
                    child: Image.asset("images/islam.jpg", fit: BoxFit.cover,)),
              ),
              Container(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 5),
                height: MediaQuery.of(context).size.height*.8,
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index){
                    var islam = Islam.fromJson(data[index]);
                    return InkWell(
                      onTap: (){
                        show(context, islam);
                      },
                      child: Card(
                        child: ListTile(
                          title: Text("${islam.chapter}:${islam.verse}"),
                          leading: Card(
                              elevation: 5,
                              child: Image.asset("images/open_islam.jpg", width: 90, fit: BoxFit.cover,)),
                          subtitle: Text(islam.text),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
