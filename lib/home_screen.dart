import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('عاصمة فلسطين',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset('assets/ps.jpg'),
              ),
              SizedBox(height: 20,),
              Text('مدينة القدس',
                style: TextStyle() ,),

              buildContainer(),
              buildContainer(),
              buildContainer(),
              buildContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer() {
    return Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade900,width: .5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade900,width: .5),
                    ),
                    child: Center(child: Text('القدس', textAlign: TextAlign.center,)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: double.infinity,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey.shade900,width: .5),
                  ),
                  child: Center(child: Text('الاسم', textAlign: TextAlign.center,)),
                ),
              ],
            ),
          );
  }
}
