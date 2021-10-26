package sample01;

public class MyPerson {
private String Name;
private int Age;
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public int getAge() {
	return Age;
}
public void setAge(int age) {
	Age = age;
}
public MyPerson(String name, int age) {
	super();
	Name = name;
	Age = age;
}


}
