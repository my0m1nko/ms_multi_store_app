import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  CategoryText({super.key});  

  final List<String> _categorylable = [
    'All',
    'Fruits',
    'Vegetables',
    'Meat',
    'Fish',
    'Beverages',
    'Snacks',
    'Bakery',
    'Dairy',
    'Frozen',
    'Personal Care',
    'Home Care',
    'Baby Care',
    'Pet Care',
    'Others'
  ];

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:  const EdgeInsets.all(12.0),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Categories', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 40,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categorylable.length,
                    itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 4),
                      child: ActionChip(
                        backgroundColor: Colors.yellow.shade900,                
                        side:  BorderSide.none,
                        label: Text(_categorylable[index],
                        style:const  TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),),
                         onPressed: (){
                      
                         },),
                    );
                    },
                  ),
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
              ],
            ),
          )
        ],
      
      ),
    );
  }
}