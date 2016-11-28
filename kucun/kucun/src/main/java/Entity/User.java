package Entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class User {
  @Id
  @GeneratedValue(generator="id")
  @GenericGenerator(name="id",strategy="increment")
  public int id;
  public String username;
  @OneToOne(cascade={CascadeType.ALL})
  @JoinColumn(name="rid",referencedColumnName="id")
  public RenQuanXian renquanxian;
  public String password;
  
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}

public RenQuanXian getRenquanxian() {
	return renquanxian;
}
public void setRenquanxian(RenQuanXian renquanxian) {
	this.renquanxian = renquanxian;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

  
}
