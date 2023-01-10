import 'package:GALIF_924/data/address_api.dart';
import 'package:GALIF_924/data/user_dao.dart';
import 'package:GALIF_924/domain/Adress.dart';
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
  TextEditingController cepController = TextEditingController();
  TextEditingController cidadeController = TextEditingController();
  TextEditingController ruaController = TextEditingController();
  TextEditingController bairroController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: const Color(0xFFF25305),
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0xFF571F04),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF4DE9C),
        toolbarHeight: 120,
        title: const Text(
          "    GALIF",
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF571F04),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(59),
          ),
        ),
      ),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 3),
              TextFormField(
                cursorColor: Color(0xFF571F04),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo e-mail obrigatório';
                  }
                  return null;
                },
                controller: userController,
                decoration: const InputDecoration(
                  labelText: 'USUÁRIO:',
                  labelStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF4DE9C),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xFFF4DE9C),
                    width: 2,
                  )),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                cursorColor: Color(0xFF571F04),
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
                  labelText: 'SENHA:',
                  labelStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF4DE9C),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xFFF4DE9C),
                    width: 2,
                  )),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: cepController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
                onEditingComplete: onEditingComplete,
                
                decoration: const InputDecoration(
                  labelText: 'CEP DO CAMPUS:',
                  labelStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF4DE9C),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xFFF4DE9C),
                    width: 2,
                  )),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: cidadeController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'CIDADE DO CAMPUS:',
                  labelStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF4DE9C),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xFFF4DE9C),
                    width: 2,
                  )),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: ruaController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'RUA DO CAMPUS:',
                  labelStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF4DE9C),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xFFF4DE9C),
                    width: 2,
                  )),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: bairroController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'BAIRRO DO CAMPUS:',
                  labelStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF4DE9C),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xFFF4DE9C),
                    width: 2,
                  )),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF4DE9C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text(
                  'CADASTRAR',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF571F04),
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
      await UserDao().listarUsers();
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

  Future<void> onEditingComplete() async {
    Address address = await AddressApi().findAddressByCep(cepController.text);

    cidadeController.text = address.localidade;
    ruaController.text = address.logradouro;
    bairroController.text = address.bairro;
  }
}