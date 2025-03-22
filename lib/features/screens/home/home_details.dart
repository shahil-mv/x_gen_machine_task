import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xgen_machine_task/features/common_widgets/common_button.dart';
import 'package:xgen_machine_task/features/common_widgets/common_text_field.dart';
import 'package:xgen_machine_task/features/screens/home/bloc/home_bloc.dart';
import 'package:xgen_machine_task/features/screens/home/domain/model/note_model.dart';
import 'bloc/home_event.dart';

class HomeDetailPage extends StatelessWidget {
  final Note? note;

  HomeDetailPage({super.key, this.note});

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (note != null) {
      _titleController.text = note!.title;
      _contentController.text = note!.content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(note == null ? 'Add Note' : 'Edit Note'),
        actions: [
          if (note != null)
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                BlocProvider.of<HomeBloc>(context).add(DeleteHome(note!.id));
                BlocProvider.of<HomeBloc>(context).add(LoadHomes());
                Navigator.of(context).pop();
              },
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFeildWidget(controller: _titleController, hintText: "Title"),
            TextFeildWidget(
              controller: _contentController,
              hintText: "Content",
              maxLines: 10,
            ),
            SizedBox(height: 16.0),

            CommonButton(
              onPress: () {
                final newHome = Note(
                  id: note?.id ?? '',
                  title: _titleController.text,
                  content: _contentController.text,
                  timestamp: Timestamp.now(),
                );
                if (note == null) {
                  BlocProvider.of<HomeBloc>(context).add(AddHome(newHome));
                } else {
                  BlocProvider.of<HomeBloc>(context).add(UpdateHome(newHome));
                }
                BlocProvider.of<HomeBloc>(context).add(LoadHomes());
                Navigator.of(context).pop();
              },
              buttonName: note == null ? 'Add Note' : 'Update Note',
            ),
          ],
        ),
      ),
    );
  }
}
