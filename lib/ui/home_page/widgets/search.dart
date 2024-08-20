import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",  
          hintStyle: TextStyle(
              color: Colors.grey[600]),  
          prefixIcon:
              const Icon(Icons.search, color: Colors.grey),  
          filled: true,  
          fillColor: Colors.white,  
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(30), 
            borderSide: BorderSide.none, 
          ),
          contentPadding: const EdgeInsets.symmetric(
              vertical: 15.0), 
        ),
      ),
    );
  }
}
