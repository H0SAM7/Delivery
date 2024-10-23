import 'package:delivery/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class testView extends StatelessWidget {
  static String id='testView';
  const testView({super.key, });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      //  Navigator.pushNamed(context, EditNoteView.id,arguments:note );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 24),
        decoration: BoxDecoration(
            color: orangeColor, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'note.title',
                  style: const TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, top: 16),
                  child: Text(
                    'note.subtitle',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.5), fontSize: 16),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                //    note.delete();
            //    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    size: 26,
                    color: Colors.black,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text(
                'note.date',
                style: TextStyle(
                    color: Colors.black.withOpacity(.5), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
