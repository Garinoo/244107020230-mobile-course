import '../../../../core/failures.dart';
import '../entities/note.dart';
import '../repositories/note_repository.dart';

class AddNote {
  const AddNote(this.repository);

  final NoteRepository repository;

  Future<({Note? note, Failure? failure})> call({
    required String title,
    String body = '',
  }) async {
    final cleanTitle = title.trim();
    final cleanBody = body.trim();

    if (cleanTitle.isEmpty) {
      return (
        note: null,
        failure: const ValidationFailure('Title must not be empty.'),
      );
    }

    return repository.addNote(
      title: cleanTitle,
      body: cleanBody,
    );
  }
}