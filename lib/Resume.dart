import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  String gen = "Male";
  String data = "Surat";
  bool lan1 = true;
  bool lan2 = false;
  bool lan3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.person),
          title: Text(
            "Resume Builder Appp", style: TextStyle(color: Colors.white),),
          centerTitle: false,
          actions: [
            Icon(Icons.more_vert_outlined),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10,),
                Text("Select Your City", style: TextStyle(color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: DropdownButton(
                items:
                [
                  DropdownMenuItem(child: Text("Surat"), value: "Surat",),
                  DropdownMenuItem(
                    child: Text("Ahmedabad"), value: "Ahmedabad",),
                  DropdownMenuItem(child: Text("Gandhi Nagar"),
                    value: "Gandhi Nagar",),
                  DropdownMenuItem(child: Text("Vapi"), value: "Vapi",),
                ], onChanged: (value) {
                setState(() {
                  data = value!;
                }
                );
              },
                value: data,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text("Selet Language", style: TextStyle(color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Checkbox(value: lan1, onChanged: (value) {
                  setState(() {
                    lan1 = value!;
                  });
                }),
                Text("Hindi",
                  style: TextStyle(fontSize: 15, color: Colors.black),),
              ],
            ),
            Row(
              children: [
                Checkbox(value: lan2, onChanged: (value) {
                  setState(() {
                    lan2 = value!;
                  });
                }),
                Text("Gujarati",
                  style: TextStyle(fontSize: 15, color: Colors.black),),
              ],
            ),
            Row(
              children: [
                Checkbox(value: lan3, onChanged: (value) {
                  setState(() {
                    lan3 = value!;
                  });
                }),
                Text("English",
                  style: TextStyle(fontSize: 15, color: Colors.black),),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Gender", style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),)
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "Male", groupValue: gen, onChanged: (value){
                      setState(() {
                        gen = value!;
                      });
                }),
                Text("Male",style: TextStyle(fontSize: 17),),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "Female", groupValue: gen, onChanged: (value){
                  setState(() {
                    gen = value!;
                  });
                }),
                Text("Female",style: TextStyle(fontSize: 17),),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "Other", groupValue: gen, onChanged: (value){
                  setState(() {
                    gen = value!;
                  });
                }),
                Text("Other",style: TextStyle(fontSize: 17),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
