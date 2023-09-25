import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import '../models/stage_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Stage> stages = Stage.stages;

    return Scaffold(
      backgroundColor: const Color(0xFFEEF2F5),
      body: LayoutBuilder(
        builder: (
          BuildContext context,
          BoxConstraints constraints,
        ) {
          if (constraints.maxWidth > 1200) {
            return _DesktopLayout(
              constraints: constraints,
              stages: stages,
            );
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: _TabletLayout(
                constraints: constraints,
                stages: stages,
              ),
            );
          }
        },
      ),
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout({
    Key? key,
    required this.constraints,
    required this.stages,
  }) : super(key: key);

  final BoxConstraints constraints;
  final List<Stage> stages;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          const Sidebar(),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ScreenTitle(),
                Expanded(
                  child: TaskDragTarget(
                    stages: stages,
                    constraints: constraints,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TabletLayout extends StatelessWidget {
  const _TabletLayout({
    Key? key,
    required this.constraints,
    required this.stages,
  }) : super(key: key);

  final BoxConstraints constraints;
  final List<Stage> stages;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          const Sidebar(),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenTitle(),
              SizedBox(
                height: constraints.maxHeight * 0.8,
                child: TaskDragTarget(
                  stages: stages,
                  constraints: constraints,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
