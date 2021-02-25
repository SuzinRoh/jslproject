
import java.util.*;
@FunctionalInterface
interface MaxScore{
	public int maxScore(int[] score);
}
public class Exam_07 {

	public static void main(String[] args) {
		//Ű����� 7���� ������ �Է� �޾Ƽ� �ִ밪��ã�� ����ϴ� ���α׷�
		Scanner s=new Scanner(System.in);
		System.out.println("���� 7�� �Է�");
		String tmp=s.nextLine();
		
		int[] tmpS=new int[7];
		StringTokenizer st=new StringTokenizer(tmp,",| ");
		for(int i=0;i<tmpS.length;i++) {
			tmpS[i] =Integer.parseInt(st.nextToken());
			System.out.print( tmpS[i]+" ");
		}
		System.out.println();
		
		
		
		
		MaxScore ms;
		ms=(score)->{
			int tm=score[0];
			for(int i=1;i<score.length;i++) {
				if(tm<score[i])
				tm=score[i];
			}
			return tm;
		};
		System.out.println(ms.maxScore(tmpS));
		
		
		
	}

}