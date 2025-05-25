import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/Cubits/add_note_cubit.dart';
import 'package:untitled2/Models/note_model.dart';
import 'package:intl/intl.dart';
import 'Custom _text_field.dart';
import 'Custom_Button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String ?title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(children: [
        const SizedBox(height: 32),
        CustomTextField(onSaved: (value) {
          title = value;
        },
          hint: "Title",),
        const SizedBox(height: 16),
        CustomTextField(

          onSaved: (value) {
            subtitle = value;
          },
          hint: "Content"
          , MaxLines: 5,
        ),
        const SizedBox(height: 32),
       ColorListView(),
        BlocBuilder<AddNoteCubit, AddNoteState>(

          builder: (context, state) {

            return CustomButton(
              isloading: state is AddNoteLoading?true:false,

              onTap: () {

                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                  var currentdate=DateTime.now();
                  var formattedDate =
                  DateFormat.yMMMMd().format(DateTime.now());
                  var notemodel = NoteModel(title: title!,
                      subtitle: subtitle!,
                      date:  formattedDate,
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addnote(notemodel);

                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {

                  });
                }
              },);
          },
        ),
        const SizedBox(height: 24),
      ],

      ),
    );
  }
}
class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const  CircleAvatar(
      radius: 38,
      backgroundColor: Colors.blue,
    );
  }
}
class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return ColorItem();
        },
      ),
    );
  }
}
