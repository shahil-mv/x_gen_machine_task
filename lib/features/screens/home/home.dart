import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:xgen_machine_task/features/screens/home/bloc/home_bloc.dart';
import 'package:xgen_machine_task/features/screens/home/bloc/home_event.dart';
import 'package:xgen_machine_task/features/screens/home/bloc/home_state.dart';
import 'package:xgen_machine_task/features/screens/home/home_details.dart';
import 'package:xgen_machine_task/shared/app/enums/api_fetch_status.dart';
import 'package:xgen_machine_task/shared/app/helper.dart';

class HomesPage extends StatefulWidget {
  const HomesPage({super.key});

  @override
  State<HomesPage> createState() => _HomesPageState();
}

class _HomesPageState extends State<HomesPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Helper.afterInit(_initFunctionality);
  }

  _initFunctionality() {
    BlocProvider.of<HomeBloc>(context).add(LoadHomes());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).pushNamed('/profile');
            },
          ),
        ],
      ),
      body: HomesList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => HomeDetailPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class HomesList extends StatelessWidget {
  const HomesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.noteFetchStatus == NoteFetchStatus.loading) {
          return Center(child: CircularProgressIndicator());
        } else if (state.noteFetchStatus == NoteFetchStatus.success) {
          return ListView.builder(
            itemCount: state.notes.length,
            itemBuilder: (context, index) {
              final notes = state.notes[index];
              return Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(16.0),
                  title: Text(
                    notes.title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8.0),
                      Text(notes.content, style: TextStyle(fontSize: 16.0)),
                      SizedBox(height: 8.0),
                      Text(
                        '${DateFormat.yMMMd().format(notes.timestamp.toDate())} at ${DateFormat.jm().format(notes.timestamp.toDate())}',
                        style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeDetailPage(note: notes),
                      ),
                    );
                  },
                ),
              );
            },
          );
        } else if (state.noteFetchStatus == NoteFetchStatus.failed) {
          return Center(child: Text("ERROR"));
        } else if (state.noteFetchStatus == NoteFetchStatus.idle) {
          return Center(child: Text("No notes Found"));
        } else {
          return Container();
        }
      },
    );
  }
}
