abstract interface class Storage {
  Future<void> init();
  Future<void> save<T>({required String? key, T? value});
  Future<T?> get<T>({required String? key});
  Future<void> delete({String? key});
  Future<void> clear();
}
