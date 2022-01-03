enum Color {
  red,
  green,
  blue
}

class ColorHelper{

  static String getValue(Color color){
    switch(color){
      case Color.red: 
        return "Red";
      case Color.green: 
        return "Green";
      case Color.blue: 
        return "Blue";  
      default:
        return "";
    }
  }

}
