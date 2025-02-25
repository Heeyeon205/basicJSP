package member;

import java.util.ArrayList;

public class MemberDAO {

	private ArrayList<Member> list;
	private int log = -1;

	public int getLog() {
		return log;
	}

	public MemberDAO() {
		list = new ArrayList<>();
		dummyData();
	}

	private void dummyData() {
		list.add(new Member("admin", "admin", "관리자", true));
		list.add(new Member("qwer", "1234", "홍길동", true));
		list.add(new Member("asdf", "1111", "김하나", false));
	}

	public boolean isDupId(String userId) {
		return list.stream().anyMatch(member -> member.getId().equals(userId));
	}

	public void addMember(String id, String pw, String name, String gender) {
		if (gender.equals("남성")) {
			list.add(new Member(id, pw, name, true));
		} else {
			list.add(new Member(id, pw, name, false));
		}
	}

	public boolean checkLogin(String userId, String userPw) {
		return list.stream().anyMatch(member -> member.getId().equals(userId) && member.getPw().equals(userPw));
	}

	public void memberLogin(String userId) {
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getId().equals(userId)) {
				log = i;
				break;
			}
		}
	}

	public void logInit() {
		log = -1;
	}

	public String getLoginName(String userId) {
		return list.get(log).getName();
	}
	
	public int getListSize() {
		return list.size();
	}
	
	public Member getOneMember(int idx) {
		return list.get(idx);
	}
	
	public void updateMember(String newName, String newGender) {
		boolean gender = newGender.equals("남성") ? true : false; 
		list.get(log).setName(newName);
		list.get(log).setGender(gender);
	}
	
	public String getLoginId() {
		return list.get(log).getId();
	}
	
	public boolean checkMemberToPw(String deletePw) {
		return list.get(log).getPw().equals(deletePw);
	}
	
	public void deleteMember(String deletePw) {
		list.remove(log);
	}
	
	public boolean checkAdmin() {
		return log == 0;
	}
	
	public boolean checkAdminDeleteMember(int deleteIdx, String deletePw) {
		return list.get(deleteIdx).getPw().equals(deletePw); 
	}
	
	public void adminDeleteMember(int deleteIdx) {
		list.remove(deleteIdx);
	}
}
