import 'dart:async';

import 'package:flutter/material.dart';

class WaitingForNfcTap extends StatelessWidget {
  const WaitingForNfcTap._();

  static Future<T> showLoading<T>({
    required BuildContext context,
    required Future<T> job,
  }) async {
    final completer = Completer<BuildContext>();
    showDialog(
      context: context,
      builder: (context) {
        if (!completer.isCompleted) {
          completer.complete(context);
        }
        return const WaitingForNfcTap._();
      },
    ).then((_) {
      if (!completer.isCompleted) {
        completer.completeError(
          StateError('Dialog was dismissed before job completed'),
        );
      }
    });
    final dialogContext = await completer.future;
    try {
      return await job;
    } catch (error) {
      rethrow;
    } finally {
      if (dialogContext.mounted) {
        Navigator.pop(dialogContext);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        padding: const EdgeInsets.all(24),
        child: const Icon(
          Icons.nfc,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
