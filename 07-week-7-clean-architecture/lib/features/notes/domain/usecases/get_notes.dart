import '../../../../core/failures.dart';
import '../entities/note.dart';
import '../repositories/note_repository.dart';

class GetNotes {
  const GetNotes(this.repository);

  final NoteRepository repository;

  Future<({List<Note> notes, Failure? failure})> call() {
    return repository.fetchNotes();
  }
}