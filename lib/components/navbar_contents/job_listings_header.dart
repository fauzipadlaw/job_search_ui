import 'package:flutter/material.dart';
import 'package:job_search_ui/utils/colors.dart';

class JobListingsHeader extends StatelessWidget {
  const JobListingsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 205,
      width: double.infinity,
      color: yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60, left: 20),
            child: Text(
              'Hi Mark 👋🏻',
              style: TextStyle(color: Colors.black),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Find The Best Job Here!",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Autour One',
                fontSize: 22,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 4),
                  filled: true,
                  alignLabelWithHint: true,
                  fillColor: lightYellow,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: lightBlack,
                  ),
                  hintText: 'Start searching for jobs',
                  hintStyle: const TextStyle(
                    color: lightBlack,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
