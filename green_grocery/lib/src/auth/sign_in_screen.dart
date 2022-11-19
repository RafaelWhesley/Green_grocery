import 'package:flutter/material.dart';
import 'package:green_grocery/src/auth/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text.rich(
                  TextSpan(style: TextStyle(
                    fontSize: 40,
                  ),
                  children: [
                    TextSpan(text: 'Green', 
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    TextSpan(
                      text: 'grocer',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   ],
                  ),
                ),
                Text('Frutas'),
              ],
            )
            ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,),
            decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(45))
            ),
           
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Email
                const CustomTextField(
                  icon: Icons.email,
                  label: 'Email',
                ),

                //Senha
                const CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true, 
                  ),
               
               // Entrar
               SizedBox(
                height: 50,

                 child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                  ),
                  onPressed: (){}, child: const Text('Entar', 
                  style: TextStyle(
                    fontSize: 18,
                  ),),),
               ),

               //Alinhamento a Direita 'Esqueceu a senha?'
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {}, 
                  child: const Text('Esqueceu a senha?',
                  style: TextStyle(color: Colors.red),),),
              ), 

          // Divider 'Ou'
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey.withAlpha(90),
                      thickness: 2,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text('Ou'),
                  ),

                  Expanded(
                    child: Divider(
                      color: Colors.grey.withAlpha(90),
                      thickness: 2,
                    ),
                  ),
                ],
              ),
            ),

          //Create a new account //OutlinedButton()
            SizedBox(
                height: 50,
                 child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 2,
                    color: Colors.green),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                  ),
                  onPressed: (){}, child: const Text('Criar conta', 
                  style: TextStyle(
                    fontSize: 18,
                  ),),),
               ),

           ],
          ),
         ),
        ],
      ),
    );
  }
}