import 'package:flutter/material.dart';
import 'stage_model.dart';

class Task {
  final String id;
  final String title;
  final String description;
  final int commentCount;
  final int attachmentCount;
  final Stage? stage;
  final ImageProvider? image;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.commentCount,
    required this.attachmentCount,
    this.stage,
    this.image,
  });

  Task copyWith({
    String? id,
    String? title,
    String? description,
    int? commentCount,
    int? attachmentCount,
    Stage? stage,
    ImageProvider? image,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      commentCount: commentCount ?? this.commentCount,
      attachmentCount: attachmentCount ?? this.attachmentCount,
      stage: stage ?? this.stage,
      image: image ?? this.image,
    );
  }

  static List<Task> tasks = [
    Task(
      id: '1',
      title: 'Build a New eCommerce App',
      description:
          'Nulla facilisi. Cras lacinia aliquam magna, a rutrum mi aliquet eu. Donec interdum tortor lacinia ipsum dapibus pretium.',
      commentCount: 3,
      attachmentCount: 1,
      image: const NetworkImage(
        'https://images.unsplash.com/photo-1660748054768-33282c43c318?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1277&q=80',
      ),
      stage: Stage.stages[0],
    ),
    Task(
      id: '2',
      title: 'Create a New Flutter Package',
      description:
          'Nulla facilisi. Cras lacinia aliquam magna, a rutrum mi aliquet eu. Donec interdum tortor lacinia ipsum dapibus pretium.',
      commentCount: 3,
      attachmentCount: 0,
      image: const NetworkImage(
        'https://images.unsplash.com/photo-1660796988367-04c82284be53?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80',
      ),
      stage: Stage.stages[0],
    ),
    Task(
      id: '3',
      title: 'Create a Flutter Course',
      description:
          'Nulla facilisi. Cras lacinia aliquam magna, a rutrum mi aliquet eu. Donec interdum tortor lacinia ipsum dapibus pretium.',
      commentCount: 2,
      attachmentCount: 1,
      stage: Stage.stages[0],
    ),
    Task(
      id: '4',
      title: 'Prepare a New Flutter Video',
      description:
          'Nulla facilisi. Cras lacinia aliquam magna, a rutrum mi aliquet eu. Donec interdum tortor lacinia ipsum dapibus pretium.',
      commentCount: 3,
      attachmentCount: 0,
      image: const NetworkImage(
        'https://images.unsplash.com/photo-1661541471551-5d31299e4f31?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80',
      ),
      stage: Stage.stages[0],
    ),
    Task(
      id: '5',
      title: 'Build a Taxi App with Flutter',
      description:
          'Nulla facilisi. Cras lacinia aliquam magna, a rutrum mi aliquet eu. Donec interdum tortor lacinia ipsum dapibus pretium.',
      commentCount: 3,
      attachmentCount: 0,
      image: const NetworkImage(
        'https://images.unsplash.com/photo-1661565882741-0b9934df7f3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80',
      ),
      stage: Stage.stages[1],
    ),
    Task(
      id: '5',
      title: 'Build a Web Responsive App',
      description:
          'Nulla facilisi. Cras lacinia aliquam magna, a rutrum mi aliquet eu. Donec interdum tortor lacinia ipsum dapibus pretium.',
      commentCount: 3,
      attachmentCount: 0,
      image: const NetworkImage(
        'https://images.unsplash.com/photo-1661615343330-7819752217fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      ),
      stage: Stage.stages[2],
    ),
  ];
}
