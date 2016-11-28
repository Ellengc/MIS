package Entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class RenQuanXian {
	@Id
	@GeneratedValue(generator="uid")
	@GenericGenerator(name="uid",strategy="increment")
    public int id;
    
    public String name;
    
    public String iphone;
    
    public String idress;
    
    @ManyToOne(cascade={CascadeType.ALL},fetch=FetchType.EAGER)
    @JoinColumn(name="Mid",referencedColumnName="id")
    public MenDian menDian;
    
    

    
	
    public String ShenFen;
    
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

	public String getIphone() {
		return iphone;
	}

	public void setIphone(String iphone) {
		this.iphone = iphone;
	}

	public String getIdress() {
		return idress;
	}

	public void setIdress(String idress) {
		this.idress = idress;
	}

	public MenDian getMenDian() {
		return menDian;
	}

	public void setMenDian(MenDian menDian) {
		this.menDian = menDian;
	}



	public String getShenFen() {
		return ShenFen;
	}

	public void setShenFen(String shenFen) {
		ShenFen = shenFen;
	}
    
   
    
}
