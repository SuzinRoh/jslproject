package exam.interfaceEx;

public class ActionExam {

	public static void main(String[] args) {
		//Action action =new
		Action action=new Action() {
			@Override
			public void work() {
				System.out.println("���縦 �մϴ�");
			}	
		};
		action.work();

	}

}