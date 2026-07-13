Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));

  if (userId <= 0) {
    throw Exception('userId incorrect:  0');
  }

  return {
    'id': userId,
    'name': 'Sirichot Tankaeo',
    'email': 'sirichot@gmail.com',
  };
}

void main() async {
  print('--- Testcase userId correct ---');
  try {
    Map<String, dynamic> profile = await fetchProfile(5);
    print('Profile data: $profile');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('End (case 1)\n');
  }

  print('--- Testcase userId incorrect ---');
  try {
    Map<String, dynamic> profile = await fetchProfile(-1);
    print('Profile data: $profile');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('End (case 2)');
  }
}