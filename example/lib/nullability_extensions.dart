extension ObjectExtension<T> on T {
  @pragma('vm:prefer-inline')
  E let<E>(E Function(T data) action) => action(this);

  @pragma('vm:prefer-inline')
  E? tryCast<E>() => this is E ? this as E : null;
}

extension BoolExtension on bool {
  /// If bool is true, the function is called and returns the value.
  /// Otherwise this returns null.
  /// Equivalent to (equalityCheck) ? toElement() : null
  @pragma('vm:prefer-inline')
  E? thenOrNull<E>(E? Function() toElement) {
    if (this == true) {
      return toElement();
    }
    return null;
  }

  /// If bool is true, the function is returned as the value.
  /// Otherwise this returns null.
  /// Equivalent to (equalityCheck) ? () { ... } : null
  @pragma('vm:prefer-inline')
  E? Function()? thenOrNullCallback<E>(E? Function() toElement) {
    if (this == true) {
      return toElement;
    }
    return null;
  }
}
