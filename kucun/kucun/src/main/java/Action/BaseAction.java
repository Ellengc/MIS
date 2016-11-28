package Action;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import Service.GoodsService;
import Service.KuCunService;
import Service.MenDianService;
import Service.UserService;



public class BaseAction<T> extends ActionSupport implements ApplicationAware,RequestAware,SessionAware,ModelDriven<T>{
    
	//调用service，创建set方法
	protected GoodsService goodsService;
	
	protected MenDianService menDianService;
	
    protected KuCunService kuCunService;
    
    protected UserService userService;
    
    
	protected List<T> lists=new ArrayList<T>();
	
	protected InputStream inputStream;
	
	protected Map<String,Object> maps=new HashMap<String,Object>();
	
	//当前页所用到的行数
	protected int rows;
	//第几页
	protected int page;
	
	protected T model;
	
	protected Date date=new Date();

	protected Map<String, Object> request;

	protected Map<String, Object> session;

	protected Map<String, Object> application;	

	@Override
	public void setApplication(Map<String, Object> application) {
		// TODO Auto-generated method stub
		this.application=application;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session=session;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request=request;
	}

	@Override
	public T getModel() {
		// TODO Auto-generated method stub
		return model;
	}


	public List<T> getLists() {
		return lists;
	}

	public void setLists(List<T> lists) {
		this.lists = lists;
	}

	public Map<String, Object> getMaps() {
		return maps;
	}

	public void setMaps(Map<String, Object> maps) {
		this.maps = maps;
	}

	public void setModel(T model) {
		this.model = model;
	}

	public InputStream getResult() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Date getDate() {
		return date;
	}

	public void setKuCunService(KuCunService kuCunService) {
		this.kuCunService = kuCunService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	public void setMenDianService(MenDianService menDianService) {
		this.menDianService = menDianService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}


	

}
