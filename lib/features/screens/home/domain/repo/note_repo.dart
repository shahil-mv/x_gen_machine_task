import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xgen_machine_task/features/screens/home/domain/model/note_model.dart';

class HomeRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> addNote(Note note) async {
    if (_auth.currentUser == null) {
      throw Exception('User not authenticated');
    }
    await _firestore
        .collection('users')
        .doc(_auth.currentUser!.uid)
        .collection('notes')
        .add(note.toMap());
  }

  Future<void> updateNote(Note note) async {
    if (_auth.currentUser == null) {
      throw Exception('User not authenticated');
    }
    await _firestore
        .collection('users')
        .doc(_auth.currentUser!.uid)
        .collection('notes')
        .doc(note.id)
        .update(note.toMap());
  }

  Future<void> deleteNote(String noteId) async {
    if (_auth.currentUser == null) {
      throw Exception('User not authenticated');
    }
    await _firestore
        .collection('users')
        .doc(_auth.currentUser!.uid)
        .collection('notes')
        .doc(noteId)
        .delete();
  }

  Future<List<Note>> getNotes() async {
    if (_auth.currentUser == null) {
      throw Exception('User not authenticated');
    }
    final snapshot = await _firestore
        .collection('users')
        .doc(_auth.currentUser!.uid)
        .collection('notes')
        .orderBy('timestamp', descending: true)
        .get();
    return snapshot.docs.map((doc) => Note.fromMap(doc.data(), doc.id)).toList();
  }
}