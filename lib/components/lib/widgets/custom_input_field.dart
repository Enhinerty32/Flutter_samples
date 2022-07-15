import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? textInputType;
  final bool passBool;

  final String formPropety;
  final Map<String, String> formValue;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.counterText,
    this.icon,
    this.suffixIcon,
    this.textInputType,
    this.passBool = false,
    required this.formPropety,
    required this.formValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: passBool,
        //keyboardType te define que es lo que nesesitas el teclado
        keyboardType: textInputType,
        // Activa de una el widget autofocus: true,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        //La Capitalization es activar mayusculas automaticamente en la app
        onChanged: (value) {
          print('$value');
          formValue[formPropety] = value;
        },
        validator: (value) {
          if (value == null) return 'Este campo es requerido';
          return value.length < 3 ? 'Minimo 3 letritas' : null;
          //Validator funciona para avisar si estamos cumpliendo algunos parametros
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        //El autovalidateMode extrae el string del Validator y lo coloca en el widget como aviso

        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          counterText: counterText,
          // prefix: Icon(Icons.verified_user_outlined),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
        )

        //Este se ocupa cuando no se nesesita un formulario
        // TextField()
        );
  }
}
