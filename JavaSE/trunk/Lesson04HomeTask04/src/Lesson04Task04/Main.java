/*������� �� ���� ������������
������� ����������, ��������������� �����������, ����������� � �������. 
��������������� �������������� ������ ������� ������������ ������ 
� ��������� �������������� ��� ������� ������ ������ equals(), hashCode(), toString().

4. ������� ������ ������ ��������, ��������� ����� �������. 
������: ������� �� ������� �������, ���������� ��������, �������, ��������� ������.
*/

package Lesson04Task04;

public class Main 
{
	private static �������[] ������� = new �������[6];
	static
	{
		�������[0] = new �������("���������","�����",32800);
		�������[1] = new �������("����������","������",40400);
		�������[2] = new �������("�����������","������",25000);
		�������[3] = new �������("�������","�����",40200);
		�������[4] = new �������("����������","������",29000);
		�������[5] = new �������("���������","�������",40100);		
	}	

	public static void main(String[] args) 
	{
		������ �������� = new ������("������c�", "�����", 207500);
		��������.set�������(�������);
		
		��������.�����������������();
		��������.����������������������������();
		��������.�����������������();
		��������.�������������������������();		
		��������.�����������������();
		
		//System.out.printf("\n"+��������.toString());
	}
}