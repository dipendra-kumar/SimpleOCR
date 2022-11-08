import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';


class DetailsPage extends StatefulWidget {
  final String text;

  const DetailsPage({Key key, this.text}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
    title: const Text("Scanned Text"),
      ),
      body: Padding(
    padding: const EdgeInsets.all(20),
    child: Container(
      padding: const EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blueGrey[100],
          borderRadius: BorderRadius.circular(10)),
      child: SelectableText(
        (widget.text.isEmpty) ? "No Text Found" : widget.text,
        style: const TextStyle(fontSize: 18),
      ),
    ),
      ),
      floatingActionButton: Padding(
    padding: const EdgeInsets.all(15.0),
    child: FloatingActionButton(
      onPressed: () {
        FlutterClipboard.copy(widget.text);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Copied to clipboard")));
      },
      child: const Icon(
        Icons.copy,
        color: Colors.white,
        size: 30,
      ),
    ),
      ),
    );
  }
}
