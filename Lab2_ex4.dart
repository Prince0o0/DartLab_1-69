void main(){
  String? middleName;
  String city = 'Nakhon Sawan';

  int middleNameLength = middleName?.length ?? 0;
  print('Middle name length: $middleNameLength');
  
  print('City: ${city.length}');

  print('MiddleName before assignment: $middleName');


  int cityLength = city.length;
  print('City length: $cityLength');

  middleName ??= 'Somethingelse';
  print('MiddleName after assignment: $middleName');


}
