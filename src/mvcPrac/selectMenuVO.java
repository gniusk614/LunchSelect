package mvcPrac;


// ** VO (Value Object), DTO (Data Transfer Object)
// => 자료의 구조를 표현하는 클래스이며, 자료의 전달에 이용됨
// => 대부분 Table 별로 만들며, Table과 동일한 필드명을 사용한다.
// => Table과 무관하게 자료전달용으로만 정의한 경우 DTO 라 함.

public class selectMenuVO {
	String pNum;
	String menu;
	
	public String getpNum() {
		return pNum;
	}
	public void setpNum(String pNum) {
		this.pNum = pNum;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	
	
	
}
