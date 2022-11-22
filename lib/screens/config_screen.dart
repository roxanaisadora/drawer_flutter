

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesion_09/preferences/preference.dart';
import 'package:sesion_09/providers/theme_provider.dart';
import 'package:sesion_09/widgets/index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({super.key});

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  final imgController = TextEditingController(text:Preferences.img);
  final nombreController = TextEditingController(text:Preferences.nombre);
  final profesionController = TextEditingController(text:Preferences.profesion);
  final emailController = TextEditingController(text:Preferences.email);
  final mobileController = TextEditingController(text:Preferences.mobile);
  final twitterController = TextEditingController(text:Preferences.twitter);
  final facebookController = TextEditingController(text:Preferences.facebook);
  final linkedinController = TextEditingController(text:Preferences.linkedin);

  

  guardar(){
    Preferences.img = imgController.text;
    Preferences.nombre = nombreController.text;
    Preferences.profesion = profesionController.text;
    Preferences.email = emailController.text;
    Preferences.mobile = mobileController.text;
    Preferences.twitter = twitterController.text;
    Preferences.facebook = facebookController.text;
    Preferences.linkedin = linkedinController.text;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Preferences.genero != 1)
                        ? Colors.redAccent
                        : Colors.blue,
        title: const Text('Configuracion'),
        centerTitle: true,
        actions: [
          Switch.adaptive(
            value: Preferences.theme,
            onChanged: (value) {
              Preferences.theme = value;
              final themeP = Provider.of<ProviderTheme>(context, listen: false);
              value ? themeP.setOscuro() : themeP.setClaro();
              setState(() {});
            },
          )
        ],
      ),
      drawer: const CustomWidgetHome(),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Column(
            children: [
              CustomTextField2(
                //initialvalue: Preferences.img,
                controller:imgController,
                keyboardType: TextInputType.text,
                hintText: 'Imagen',
                prefixIcon: const FaIcon(FontAwesomeIcons.image)
              ),
              const SizedBox(height: 10,),
              CustomTextField2(
                //initialvalue: Preferences.nombre,
                controller:nombreController,
                keyboardType: TextInputType.name,
                hintText: 'Nombre Completo',
                prefixIcon: const FaIcon(FontAwesomeIcons.user)
                
              ),
              const SizedBox(height: 10,),
              CustomTextField2(
                controller:profesionController,
                keyboardType: TextInputType.name,
                hintText: 'Profesion',
                prefixIcon: const Icon(Icons.work),
              ),
              const SizedBox(height: 10,),
              CustomTextField2(
                controller:emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Email',
                prefixIcon: const FaIcon(FontAwesomeIcons.envelope)
                
              ),
              const SizedBox(height: 10,),
              CustomTextField2(
                controller:mobileController,
                keyboardType: TextInputType.number,
                hintText: 'Telefono',
                prefixIcon: const FaIcon(FontAwesomeIcons.mobileScreen)
                
              ),
              const SizedBox(height: 10,),
              CustomTextField2(
                controller:twitterController,
                keyboardType: TextInputType.name,
                hintText: 'twitter',
                prefixIcon: const FaIcon(FontAwesomeIcons.twitter),
              ),
              const SizedBox(height: 10,),
              CustomTextField2(
                controller:facebookController,
                //initialvalue: Preferences.facebook,
                keyboardType: TextInputType.name,
                hintText: 'facebook',
                prefixIcon: const FaIcon(FontAwesomeIcons.facebook),
                
              ),
              const SizedBox(height: 10,),
              CustomTextField2(
                controller:linkedinController,
                keyboardType: TextInputType.name,
                hintText: 'linkedin',
                prefixIcon: const Icon(Icons.link),
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(
                height: 30,
                width: 156,
                child: RadioListTile(
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  activeColor: Colors.green,
                  value: 1,
                  groupValue: Preferences.genero,
                  title: const Text('Masculino'),
                  onChanged: (value) {
                    Preferences.genero = value ?? 1;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(
                height: 30,
                width: 155,
                child:RadioListTile(
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                activeColor: Colors.green,
                value: 2,
                groupValue: Preferences.genero,
                title: const Text('Femenino'),
                onChanged: (value) {
                  Preferences.genero = value ?? 2;
                  setState(() {});
                },
              ),
              )
                ],
              ),
              const SizedBox(height: 10),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.amber,
                child: const Text('Guardar', style: TextStyle(color: Colors.white, fontSize: 25),),
                onPressed: (){
                  guardar();
                })
            ],
          ),
        ),
      ),
    );
  }
}
