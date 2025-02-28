package board;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

public class BoardDAO {
	private ArrayList<Board> list;

	public BoardDAO() {
		list = new ArrayList<>();
	}

	public void addDummyData() {
		list.add(new Board("작성자1", "2024-02-25 10:15:00", "첫 번째 글", "내용1"));
		list.add(new Board("작성자2", "2024-02-25 11:30:00", "두 번째 글", "내용2"));
		list.add(new Board("작성자3", "2024-02-25 12:45:00", "세 번째 글", "내용3"));
		list.add(new Board("작성자4", "2024-02-25 14:00:00", "네 번째 글", "내용4"));
		list.add(new Board("작성자5", "2024-02-25 15:15:00", "다섯 번째 글", "내용5"));
		list.add(new Board("작성자6", "2024-02-25 16:30:00", "여섯 번째 글", "내용6"));
		list.add(new Board("작성자7", "2024-02-25 17:45:00", "일곱 번째 글", "내용7"));
		list.add(new Board("작성자8", "2024-02-25 19:00:00", "여덟 번째 글", "내용8"));
		list.add(new Board("작성자9", "2024-02-25 20:15:00", "아홉 번째 글", "내용9"));
		list.add(new Board("작성자10", "2024-02-25 21:30:00", "열 번째 글", "내용10"));
	}

	public int getSize() {
		return list.size();
	}

	public Board getBoardElement(int idx) {
		return list.get(idx);
	}

	public String[] getBoardInfoToIdx(int idx) {
		String[] info = new String[3];
		info[0] = list.get(idx).getNo() + "";
		info[1] = list.get(idx).getWriter();
		info[2] = list.get(idx).getRegDate();
		return info;
	}

	public int findUpdateIdx(int no) {
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getNo() == no) {
				return i;
			}
		}
		return -1;
	}

	public void updatePost(int idx, String title, String body) {
		list.get(idx).setSubject(title);
		list.get(idx).setContents(body);
	}

	public void deleteAllPost() {
		Board.setCnt(1);
		list.clear();
	}

	public void deletePost(int idx) {
		list.remove(idx);
	}

	public int getNextNo() {
		return Board.getCnt();
	}

	public void addPost(String writer, String title, String body) {
		LocalDateTime now = LocalDateTime.now();
		String date = now.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		list.add(new Board(writer, date, title, body));
	}
}
