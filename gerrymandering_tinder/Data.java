import java.util.ArrayList;
import java.util.HashMap;
public class Data{
  String[] questions ={"",","};
  public static ArrayList<Object> districts = new ArrayList<Object>();





  void addDisctict(String name,String photo, HashMap conversation){
      Data.districts.add(new District(name, false, photo, conversation));
  }
}
