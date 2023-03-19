class Vehicle{
  String brand;
  String model;
  int year;
  Vehicle(this.brand, this.model, this.year);
  
  void drive(){
    print("$brand $model $year is being Driven");
  }
}
  class Car extends Vehicle{
  double numDoors;
    Car(String brand, String model, int year, this.numDoors): super(brand,model,year);
    @override
    void drive(){
      print("The $numDoors Doors of $brand $model $year is being driven by Shariq Iqbal");
    }
  }

  void main(){
    
    Car car= Car("Land Cruiser", "V8", 2022, 4);
    car.drive();
    
  }
