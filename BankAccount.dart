import 'dart:io';
class BankAccount{
  double balance;
  double accNumber;
  BankAccount(this.balance, this.accNumber);
  
  void deposit(){
    double deposit = 45000;
      deposit += balance;
    print("Balance is: $balance");
  }
  
  void withdraw(){
    stdout.write("Enter Amount To With Draw");
    double withdraw = double.parse(stdin.readLineSync()!);
     withdraw -= balance;
    print("Remaining balance: $balance");
   }
  }

class CheckingAccount extends BankAccount{
   double transactionLimit;
   CheckingAccount(double balance, double accNumber, this.transactionLimit) : super(balance , accNumber);
  
  @override
  void withdraw(){
    stdout.write("Enter Amount To WithDraw");
    double withDraw= double.parse(stdin.readLineSync()!);
    if(withDraw <= transactionLimit){
      print("Amount withdrawn");
    } else{
      print("Transaction Limit has reach");
    }
  }

}

 void main(){
   CheckingAccount checkingAccount= CheckingAccount(1200000, 098765, 50000);
   
   checkingAccount.deposit();
   checkingAccount.withdraw();
 }

