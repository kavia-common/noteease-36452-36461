import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/models/note.dart';

void main() {
  test('Note toMap and fromMap roundtrip', () {
    final now = DateTime.now();
    final n = Note(
      id: '1',
      title: 'Hello',
      body: 'World',
      createdAt: now,
      updatedAt: now,
    );
    final map = n.toMap();
    final back = Note.fromMap(map);
    expect(back.id, n.id);
    expect(back.title, n.title);
    expect(back.body, n.body);
    expect(back.createdAt.toIso8601String(), n.createdAt.toIso8601String());
    expect(back.updatedAt.toIso8601String(), n.updatedAt.toIso8601String());
  });
}
