import 'package:collection/collection.dart';

enum RequestState {
  ACCEPTED,
  REJECTED,
  PENDING,
  FINALIZED,
}

enum UserState {
  UNVERIFIED,
  VERIFIED,
  SUSPENDED,
  DELETED,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (RequestState):
      return RequestState.values.deserialize(value) as T?;
    case (UserState):
      return UserState.values.deserialize(value) as T?;
    default:
      return null;
  }
}
