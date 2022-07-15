import 'package:flutter_samples/components/lib/widgets/witgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormState = GlobalKey();

    //TODO:myFormState: llamamos la key para mantener el estado

    final Map<String, String> formValueInf = {
      'fisrt_name': 'add ',
      'last_name': 'add ',
      'email': ' add ',
      'password': ' add',
      'role': 'add '
    };
//formValue creamos un formulario para almacenar la data

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
//llamamos la key para mantener el estado
          key: myFormState,
          child: Column(
            children: [
              //TODO: CustomInputField :Este se usa cuando se nesesita crear un formulario
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Nombre del Usuario',
                textInputType: TextInputType.name,
                formValue: formValueInf,
                formPropety: 'fisrt_name',
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                  formPropety: 'last_name',
                  formValue: formValueInf,
                  labelText: 'Apellido',
                  hintText: 'Apellido del Usuario',
                  textInputType: TextInputType.name),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Email',
                hintText: 'Email del Usuario',
                formPropety: 'email',
                textInputType: TextInputType.emailAddress,
                formValue: formValueInf,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Contrasena',
                hintText: 'Contrasena del Usuario',
                formPropety: 'password',
                textInputType: TextInputType.emailAddress,
                formValue: formValueInf,
                passBool: true,
              ),
              const SizedBox(
                height: 30,
              ),
              DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'SuperUser',
                      child: Text('SuperUser'),
                    ),
                    DropdownMenuItem(
                      value: 'developer',
                      child: Text('developer'),
                    ),
                    DropdownMenuItem(
                      value: 'jr.developer',
                      child: Text('jr.developer'),
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                    //Especificar al widgets que devolvera <String>
                    formValueInf['role'] = value ?? "Admin";
                  }),
              ElevatedButton(
                  onPressed: () {
//TODO; ! ?? la admiracion del final es para decirle al programa que siempre vamos a tener datos en validate
//myFormState.currentState llamamos esta funcion para verificar u validar formulario
                    if (!myFormState.currentState!.validate()) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      //el codigo de FocusScope ayuda a quitar el teclado cuando se asigna un boton o se toca
                      print('formulario no valido');
                      return;
                    }

                    //TODO:Imprimir valores del formulario
                    print(formValueInf);
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))))
            ],
          ),
        ),
      )),
    );
  }
}

// class CustomInputField extends StatelessWidget {
//   const CustomInputField({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//         // Activa de una el widget autofocus: true,
//         initialValue: 'Fernando Herreras',
//         textCapitalization: TextCapitalization.words,
//         //La Capitalization es activar mayusculas automaticamente en la app
//         onChanged: (value) => print('$value'),
//         validator: (value) {
//           if (value == null) return 'Este campo es requerido';
//           return value.length < 3 ? 'Minimo 3 letritas' : null;
//           //Validator funciona para avisar si estamos cumpliendo algunos parametros
//         },
//         autovalidateMode: AutovalidateMode.onUserInteraction,
//         //El autovalidateMode extrae el string del Validator y lo coloca en el widget como aviso

//         decoration: const InputDecoration(
//           hintText: 'Nombre de Usuario',
//           labelText: 'Nombre',
//           helperText: 'Solo letras',
//           counterText: '3 Caracteres',
//           // prefix: Icon(Icons.verified_user_outlined),
//           suffixIcon: Icon(Icons.person),
//           icon: Icon(Icons.assignment_ind_outlined),

//         )

//         //Este se ocupa cuando no se nesesita un formulario
//         // TextField()
//         );
//   }
// }
