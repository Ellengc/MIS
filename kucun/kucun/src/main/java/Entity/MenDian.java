package Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class MenDian {
   @Id
   @GeneratedValue(generator="uid")
   @GenericGenerator(name="uid",strategy="increment")	
   public int id;
   
   
   public String name;
   
   public String idress;
   
   
   public String mingxi;


public int getId() {
	return id;
}


public void setId(int id) {
	this.id = id;
}


public String getName() {
	return name;
}


public void setName(String name) {
	this.name = name;
}


public String getIdress() {
	return idress;
}


public void setIdress(String idress) {
	this.idress = idress;
}


public String getMingxi() {
	return mingxi;
}


public void setMingxi(String mingxi) {
	this.mingxi = mingxi;
}
   
}
