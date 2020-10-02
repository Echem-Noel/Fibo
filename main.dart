import 'dart:io';
bool checkifinFiboSeies(List<int> lista){
  for(int j = 2; j < lista.length; j++){ 
   if ((lista[j - 2] + lista[j - 1]) == lista[j]){
      return true;
   }      
  }
   return false;
}
void main() {
	print("Fibbonacci Checker\n");
  List<int> lista = new List();
  print("Enter size of list(size must be greater than 3 less than 10): ");
  int size = int.parse(stdin.readLineSync());
  if(size < 3 || size > 10){
    print("Invalid size");
  }else{
    for(int i = 0; i < size;i++){
      int y = i+1;
      print("Enter number $y: ");
      lista.add(int.parse(stdin.readLineSync()));
    }
    print(lista);
    print(checkifinFiboSeies(lista));
  }  
}
