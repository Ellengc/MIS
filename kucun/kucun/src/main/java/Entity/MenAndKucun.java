package Entity;

import java.util.Date;

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
public class MenAndKucun {
	@Id
	@GeneratedValue(generator="uid")
	@GenericGenerator(name="uid",strategy="increment")
    public int id;
    
    @ManyToOne(cascade={CascadeType.ALL},fetch=FetchType.EAGER)
    @JoinColumn(name="Gid",referencedColumnName="id")
    public Goods goods;
    
    @ManyToOne(cascade={CascadeType.ALL},fetch=FetchType.EAGER)
    @JoinColumn(name="Mid",referencedColumnName="id")
    public MenDian menDian;
    
    public int ROP;
    
    public int xuqiuyuce;
    
    public Date lasttime;
    
    public int kucun;
    
    public int Q;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public MenDian getMenDian() {
		return menDian;
	}

	public void setMenDian(MenDian menDian) {
		this.menDian = menDian;
	}

	public int getKucun() {
		return kucun;
	}

	public void setKucun(int kucun) {
		this.kucun = kucun;
	}

	public int getROP() {
		return ROP;
	}

	public void setROP(int rOP) {
		ROP = rOP;
	}

	public Date getLasttime() {
		return lasttime;
	}

	public void setLasttime(Date lasttime) {
		this.lasttime = lasttime;
	}

	public int getQ() {
		return Q;
	}

	public void setQ(int q) {
		Q = q;
	}

	public int getXuqiuyuce() {
		return xuqiuyuce;
	}

	public void setXuqiuyuce(int xuqiuyuce) {
		this.xuqiuyuce = xuqiuyuce;
	}
	
}
