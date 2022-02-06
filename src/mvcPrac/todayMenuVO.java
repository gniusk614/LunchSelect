package mvcPrac;


// ** VO (Value Object), DTO (Data Transfer Object)
// => 자료의 구조를 표현하는 클래스이며, 자료의 전달에 이용됨
// => 대부분 Table 별로 만들며, Table과 동일한 필드명을 사용한다.
// => Table과 무관하게 자료전달용으로만 정의한 경우 DTO 라 함.

public class todayMenuVO {
	String menu1;
	String menu2;
	String menu3;
	String menu4;
	String regdate;
	
	public String getMenu1() {
		return menu1;
	}
	public void setMenu1(String menu1) {
		this.menu1 = menu1;
	}
	public String getMenu2() {
		return menu2;
	}
	public void setMenu2(String menu2) {
		this.menu2 = menu2;
	}
	public String getMenu3() {
		return menu3;
	}
	public void setMenu3(String menu3) {
		this.menu3 = menu3;
	}
	public String getMenu4() {
		return menu4;
	}
	public void setMenu4(String menu4) {
		this.menu4 = menu4;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
	
}
