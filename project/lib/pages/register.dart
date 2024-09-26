import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {

    final _formkey =GlobalKey<FormState>();
    moveToHome(BuildContext context){
      if(_formkey.currentState!.validate()){
        
      }

    }

    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Container(
              height: 300.0,
              child: PageView(
                children: [
                  Image.network("https://images.pexels.com/photos/20337842/pexels-photo-20337842/free-photo-of-a-soft-light-colored-sofa-and-a-wooden-chair-in-a-modern-living-room.jpeg?auto=compress&cs=tinysrgb&w=400",fit: BoxFit.cover,),
                  Image.network("https://images.pexels.com/photos/20537269/pexels-photo-20537269/free-photo-of-analog-photo-of-a-modern-dining-room.jpeg?auto=compress&cs=tinysrgb&w=400",fit: BoxFit.cover,),
                  Image.network("https://images.pexels.com/photos/20604655/pexels-photo-20604655/free-photo-of-a-table-in-a-room.jpeg?auto=compress&cs=tinysrgb&w=400",fit: BoxFit.cover,)
                ],
              ),
            ),
        
            SizedBox(height: 10.0,),
            RichText(text: TextSpan(
              children: [
                
                 TextSpan(
                  text: "Welcome ",
                  style: TextStyle(color: Colors.blue,fontSize: 30.0,letterSpacing: 4.0)
                ),
                TextSpan(
                  text: "Register🖤",
                  style: TextStyle(color: Colors.white,fontSize: 30.0,letterSpacing: 4.0)
                ),
                
              ]
            )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                    
                    
                  )
                ),
                validator: (value){
                  if(value == null ||  value.isEmpty){
                    return "Username can not be empty";
        
                  }
                  return null;
                },
              ),
            ),
        
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0,)
                    
                  )
                ),
                validator: (value){
                  if(value == null ||  value.isEmpty){
                    return "Email can not be empty";
        
                  }
                  else if (!value.contains("@gmail.com")){
                    return "invalid Email";
                  }
                  return null;
                },
              ),
            ),
        
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                    
                  )
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Password can not be Empty";
        
                  }
                  else if(value.length<= 6){
                    return "Password can not be less then Six charactors";
                  }
                  return null;
                },
              ),
            ),
        
            ElevatedButton.icon(onPressed: ()=>moveToHome(context), icon:Icon (Icons.app_registration_rounded),label: Text("Register✅"),style: ElevatedButton.styleFrom(
              minimumSize: Size(190.0, 60.0),
              foregroundColor: Colors.blue,
              shadowColor: Colors.blue,
              elevation: 7.0
            ),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.notification_add),),
    );
  }
}