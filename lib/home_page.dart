import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const [
    'All',
    'Adidas',
    'Nike',
    'Bata',
  ];
  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    const myBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(225, 225, 225, 1),
      ),
      borderRadius: BorderRadius.horizontal(left: Radius.circular(50),),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Shoes\nCollection', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: myBorder,
                      enabledBorder: myBorder,
                      focusedBorder: myBorder,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 75,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  final filter = filters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(onTap: () {
                      setState(() {
                        selectedFilter = filter;
                      });
                    }, child: Chip(label: Text(filter), backgroundColor: selectedFilter == filter ? Theme.of(context).colorScheme.primary : const Color.fromRGBO(245, 247, 249, 1), side: const BorderSide(color: Color.fromRGBO(245, 247, 249, 1),), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10), labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}