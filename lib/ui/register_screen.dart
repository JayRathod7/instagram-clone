import 'package:chat_application/ui/home.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
          const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Card(
            child: Padding(
              padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("Register",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontWeight: FontWeight.w700)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Row(
                      children: [
                        const Icon(Icons.phone),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            controller: numberController,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              hintText: "enter your number",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      // getNumber();
                      getNumber();
                    },
                    child: Container(
                      width: 200,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 1)),
                      child: const Text(
                        "Register",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }



  getNumber(){
    var number = numberController.text.toString();
    Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage(number : number)));
  }
}