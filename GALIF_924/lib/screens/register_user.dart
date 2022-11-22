import 'package:GALIF_924/data/user_dao.dart';
import 'package:GALIF_924/domain/user.dart';
import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildBody(),
      ),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 48),
              Text(
                "Cadastrar Usuário",
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 42),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo e-mail obrigatório';
                  }
                  return null;
                },
                controller: userController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Usuário'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo senha obrigatório';
                  } else if (value.length < 6) {
                    return 'Senha deve possuir no mínimo 8 digitos';
                  }

                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Senha'),
              ),
              const SizedBox(height: 32),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: onPressed,
                style:
                    ElevatedButton.styleFrom(primary: const Color(0xFFF25305)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'Registrar Usuário',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onPressed() async {
    if (_formKey.currentState!.validate()) {
      String userDigitado = userController.text;
      String passwordDigitado = passwordController.text;

      /// SALVAR USUARIO
      User userCriado =
          User(username: userDigitado, password: passwordDigitado);
      await UserDao().salvarUser(user: userCriado);
      showSnackBar('Usuário foi salvo com sucesso!');
      Navigator.pop(context);
    } else {
      showSnackBar("Erro na validação");
    }
  }

  showSnackBar(String msg) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 32,
      ),
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}