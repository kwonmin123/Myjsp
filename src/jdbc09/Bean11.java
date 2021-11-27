package jdbc09;

import java.time.LocalDate;

public class Bean11 {
private String name;
private int age;
private LocalDate birth;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public LocalDate getDate() {
	return birth;
}
public void setBirth(LocalDate date) {
	this.birth = date;
}
}
