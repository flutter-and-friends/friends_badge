abstract class BadgeRepository {
  Future<void> writeOverBle(String address, List<int> data);
  Future<void> writeOverNfc(List<int> data);
  Stream<List<String>> scanForBleDevices();
}
