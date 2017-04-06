package mlab;

public class SetupDiag
{
	static final int DIAG_CODE_FPGA_LOAD   = 0;
	static final int DIAG_CODE_SHEMA_LOAD  = 1;
	static final int DIAG_CODE_JAVA_EXIT   = 2;
	static final int DIAG_CODE_LINK        = 3;
	static final int DIAG_CODE_SYS_STATUS  = 4;
	static final int DIAG_CODE_ADPT_STATUS = 5;

	static final int ADPT_NE2     = 1;
	static final int ADPT_NEA_REN = 2;
	static final int ADPT_NEA_HVC = 3;

	/***
	  ����������� ������ �������� ���� �� � ���� ��.
	  getAdaptorVerId - {id[4],ver_hi[8],ver_lo[4]},
	  GetAdaptorType  - ��� �� (ADPT_NE2, ADPT_NEA_REN, ...).
	***/
	public static native int getAdaptorVerId( );
	public int GetAdaptorType( )
	{	
		return ((getAdaptorVerId() >> 12) & 0x0F);
	}

	/*** 
          ������ � ����������������� ������ ��� �������� ��������. 
	  ������/������ ����������������� ������ �������������� �������
	  �� 64 int (256 ����). ���-�� ������ ����� ���������� ����� ����� 
	  GetBlockCount(). ���������� ������ ���������� � 0.
	  � ������ ��������� ���������� ������� ���������� 0.
	***/
	public static native int ReadBlock(int indx, int[] block_64);
	public static native int WriteBlock(int indx, int[] block_64);
	public static native int GetBlockCount( );

	/***
	  ��������� ��������������� ���������� � �������.
	  ������������� ���������������� ���� (DIAG_CODE_) �������� � ���������.
	***/
	public static native int GetDiagCode( int id );

	public static native void NeaUpdate(char[] name);
	public static void NeaUpdate(String name)
	{
		NeaUpdate(name.toCharArray());
	}


	public static native int m_EERead(int addr, byte[] buf);
	public static native int m_EEWrite(int addr, byte[] buf);

	public static native int m_flRead(int indx, int[] arr);
	public static native int m_flWrite(int indx, int[] arr);
	public static native int m_flErase();
}
