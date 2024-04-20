import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:team/cubits/cubit/is_selected_cubit.dart';

class ListBuilderItem extends StatefulWidget {
  const ListBuilderItem({
    super.key,
    required this.iconPage,
    required this.text,
    required this.index,
  });
  final IconData iconPage;
  final String text;
  final int index;
  @override
  State<ListBuilderItem> createState() => _ListBuilderItemState();
}

class _ListBuilderItemState extends State<ListBuilderItem> {
  final FlutterTts flutterTts = FlutterTts();

  void speak({required String text}) async {
    await flutterTts.setPitch(1.0);
    await flutterTts.setLanguage("EN - US");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IsSelectedCubit, IsSelectedState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListTile(
          selectedTileColor: Colors.blue.shade100,
          selectedColor: Colors.black,
          selected:
              widget.index == BlocProvider.of<IsSelectedCubit>(context).index
                  ? true
                  : false,
          onTap: () {
            BlocProvider.of<IsSelectedCubit>(context)
                .setIsSelected(i: widget.index);
            speak(text: widget.text);
          },
          leading: FittedBox(
            fit: BoxFit.scaleDown,
            child: Icon(
              widget.iconPage,
              color:
                  widget.index == BlocProvider.of<IsSelectedCubit>(context).index
                      ? Colors.blue.shade900
                      : Colors.blue,
            ),
          ),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              widget.text,
              style: TextStyle(
                color: widget.index ==
                        BlocProvider.of<IsSelectedCubit>(context).index
                    ? Colors.blue.shade900
                    : Colors.blue,
              ),
            ),
          ),
          // subtitle:
          trailing: FittedBox(
            fit: BoxFit.scaleDown,
            child: Icon(
              BlocProvider.of<IsSelectedCubit>(context).index == widget.index
                  ? Icons.volume_up
                  : Icons.volume_off,
              color:
                  widget.index == BlocProvider.of<IsSelectedCubit>(context).index
                      ? Colors.blue.shade900
                      : Colors.blue,
            ),
          ),
        );
      },
    );
  }
}