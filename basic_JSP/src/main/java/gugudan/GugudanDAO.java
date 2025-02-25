package gugudan;

import java.util.ArrayList;
import java.util.Random;

public class GugudanDAO {
	ArrayList<GugudanVO> quiz;
	private int score;
	private int cnt;
	private int userAnswer;

	public ArrayList<GugudanVO> getQuiz() {
		return quiz;
	}
	public int getScore() {
		return score;
	}
	public int getCnt() {
		return cnt;
	}

	
	public void initGame() {
		createQuiz();
	}

	public void createQuiz() {
		cnt = 0;
		quiz = new ArrayList<>();
		Random rd = new Random();
		for (int i = 0; i < 5; i++) {
			quiz.add(new GugudanVO());
			int rdNum1 = rd.nextInt(8) + 2;
			int rdNum2 = rd.nextInt(9) + 1;
			quiz.get(i).setNum1(rdNum1);
			quiz.get(i).setNum2(rdNum2);
		}
	}

	public void getUserAnswer(int uAnswer) {
		userAnswer = uAnswer;
	}

	public boolean checkAnswer() {
		int answer = quiz.get(cnt - 1).getNum1() * quiz.get(cnt - 1).getNum2();
		if (answer == userAnswer) {
			score += 20;
			userAnswer = 0;
			return true;
		} else {
			userAnswer = 0;
			return false;
		}
	}

	public void nextQuiz() {
		if (cnt < quiz.size()) {
			cnt++;
		}
	}
}