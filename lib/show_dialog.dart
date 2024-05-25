import 'package:flutter/material.dart';
import 'package:mouaffo/json_transforme.dart';

show(BuildContext context, Islam islam){
  return showDialog(context: context,
      builder: (context){
        return SimpleDialog(
          contentPadding: const EdgeInsets.all(24),
          children: [
            Text("${islam.chapter}:${islam.verse}"),
            Text(islam.text)
          ],
        );
      });
}