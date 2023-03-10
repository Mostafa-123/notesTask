import 'package:flutter/material.dart';

class notes extends StatelessWidget {
  const notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'NotePad',
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: '🔎   search notes',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(color: Colors.black)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(color: Colors.black)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: ((context, index) {
                    return mycontainer(index);
                  }),
                  separatorBuilder: ((context, index) {
                    return SizedBox(
                      height: 20,
                    );
                  }),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }

  Widget mycontainer(int index) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: (index % 2 == 0) ? Colors.cyanAccent : Colors.amberAccent),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Text(
              'Todays grocary List',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Todays grocary List',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
