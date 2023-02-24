import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model.dart';

class CardWidget extends StatelessWidget {
  CardWidget({Key? key, required this.model}) : super(key: key);
  final Model model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Color(0xff50C800),
                radius: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 9,
                  child: Icon(
                    Icons.downloading,
                    size: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  model.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Container(
            width: 51,
            height: 32,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 2, color: Color(0xff50C800))),
            child: model.isExpandable
                ? Icon(
                    CupertinoIcons.chevron_down,
                    size: 18,
                  )
                : Text(model.value),
          )
        ],
      ),
    );
  }
}
