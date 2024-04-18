import 'package:flutter/material.dart';
import 'package:flutter_application_1/diseaseFormat.dart';

class ResultScreen extends StatefulWidget {
  final DiseaseResponse resultList;

  const ResultScreen({Key? key, required this.resultList}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('State of Leaf', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      backgroundColor: Colors.green,
      foregroundColor: Colors.black,
      shadowColor: Colors.grey,
      elevation: 5.0,
      centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: widget.resultList.diseases.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 2,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(
                        widget.resultList.diseases[index],
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      // subtitle: Text(
                      //   'Description of the disease goes here...',
                      //   style: TextStyle(fontSize: 14),
                      // ),
                      // trailing: Icon(Icons.arrow_forward),
                      // onTap: () {
                      //   // Handle tap
                      // },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),

    );
  }
}
