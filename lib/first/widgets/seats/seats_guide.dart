import 'package:flutter/material.dart';
import 'package:uichallenge/first/bloc/seats_bloc.dart';
import 'package:uichallenge/first/common/constants/numbers.dart';
import 'package:uichallenge/first/widgets/seats/seat_cell.dart';

class SeatsGuideWidget extends StatelessWidget {
  const SeatsGuideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        makeHint('SELECTED', SeatState.Selected),
        makeHint('RESERVED', SeatState.Reserved),
        makeHint('AVAILABLE', SeatState.Available),
      ],
    );
  }

  Widget makeHint(String text, SeatState state) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: appDefaultFontSizes,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        SeatCell(state),
      ],
    );
  }
}
