import java.io.*;
import java.util.*;

class Student implements Serializable{
	private int num;
	private String name;
	private int kor;
	private int mat;
	private int eng;
	
	Student(int num,String name,int kor,int mat,int eng){
		this.num=num;
		this.name=name;
		this.kor=kor;
		this.mat=mat;
	}
	
	@Override
	public String toString() {
		return  num + "\t" + name + "\t\t" + kor + "\t" + mat + "\t" + eng ;
	}
	
	@Override
	public int hashCode() {
		
		return num;
	}

	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Student ) {
			Student s=(Student)obj;
			return num==num;
		}else {
			return false;
		}
	}

	
}
public class Exam_01 {

	public static void main(String[] args) throws Exception{
		Set<Student> set =new HashSet<Student>();
		File f=new File("//Volumes//SUJIN//student1028.dat");
		if(f.exists()) {
			if(f==null) {
				System.out.println("empty");
			}else {
			System.out.println("**1");
				FileInputStream fis =new FileInputStream(f);
				BufferedInputStream bis =new BufferedInputStream(fis);
				ObjectInputStream ois =new ObjectInputStream(bis);
				Object obj =null;
			
					try {
						while(ois.readObject()!=null) {
							System.out.println("**2");
							obj=ois.readObject();
							String tmps=(String)obj;
							String var[]=tmps.split(",");
							int num=Integer.parseInt(var[0]);
							String name=(var[1]);
							int kor=Integer.parseInt(var[2]);
							int mat=Integer.parseInt(var[3]);
							int eng=Integer.parseInt(var[4]);
							set.add(new Student(num,name,kor,mat,eng));
						}
						
					}catch(EOFException e) {
						//e.printStackTrace();
					}
				}
			
		}else {
			System.out.println("Create New File.");
			f.createNewFile();
		}
		
		Scanner s=new Scanner(System.in);
		BufferedReader br1 =new BufferedReader(new InputStreamReader(System.in));
		while(true) {
			System.out.println("�޴��� �����Ͻÿ�.");
			System.out.println("[1] �л����");
			System.out.println("[2] ��ü���");
			System.out.println("[3] ����");
			String selectNum=s.next();
			
			switch(selectNum) {
				case "1":
					while(true) {
					
							System.out.print("��ȣ,�̸�,����,����,���� �Է� :");
							String tmpInputString=br1.readLine().trim();
							if(tmpInputString.contains("-99"))
								break;
							
							StringTokenizer st=new StringTokenizer(tmpInputString,",");
							
							int num=Integer.parseInt(st.nextToken());
							
							String name=st.nextToken();
							int kor=Integer.parseInt(st.nextToken());
							int mat=Integer.parseInt(st.nextToken());
							int eng=Integer.parseInt(st.nextToken());
							Student student =new Student(num,name,kor,mat,eng);
							if(!set.isEmpty()) {
								if(set.contains(student)) {
									System.out.println("�̹� �Էµ� ��ȣ�Դϴ�.");
									continue;
								}
							}
							set.add(student);
							
			
					}
					continue;
				case "2":
					Iterator<Student> it=set.iterator();
					System.out.println("��ȣ\t�̸�\t����\t����\t����\t����\t���");
					while(it.hasNext()) {
						System.out.println(it.next());
					}
					continue;
				case "3":
					
					FileOutputStream fos=new FileOutputStream(f);//���� ����
					BufferedOutputStream bos =new BufferedOutputStream(fos);
					ObjectOutputStream oos=new ObjectOutputStream(bos);
					
					oos.writeObject(set);
					oos.close();
					
					System.out.println("�ý��� ����.");
					System.exit(0);
					break;
			}
		
		}
	}

}