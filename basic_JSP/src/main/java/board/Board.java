package board;

public class Board {
	private static int cnt = 1;
	private int no; // 게시글 번호
    private String writer; //작성자
    private String regDate;//작성일
    private String subject;//제목
    private String contents;//내용
    
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getNo() {
		return no;
	}
	public String getWriter() {
		return writer;
	}
	public String getSubject() {
		return subject;
	}
	public String getContents() {
		return contents;
	}
	public String getRegDate() {
		return regDate;
	}
	public static int getCnt() {
		return cnt;
	}
	public static void setCnt(int cnt) {
		Board.cnt = cnt;
	}
	public Board(String writer, String regDate, String subject, String contents) {
		this.no = cnt++;
		this.writer = writer;
		this.subject = subject;
		this.contents = contents;
		this.regDate = regDate;
	}
}
