package mvcPrac;

public class AMemberVO {

	String name;
	String pNum;
	String pw;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getpNum() {
		return pNum;
	}
	public void setpNum(String pNum) {
		this.pNum = pNum;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	@Override
	public String toString() {
		return "AMemberVO [name=" + name + ", pNum=" + pNum + ", pw=" + pw + "]";
	}
	
	
	
	
}
