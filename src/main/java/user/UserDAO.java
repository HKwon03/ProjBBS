package user;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class UserDAO {
	//dao:�����ͺ��̽� ���� ��ü�� ���ڷ�
	//���������� db���� ȸ������ �ҷ����ų� db�� ȸ�������� ������
	private Connection conn; //connection db�� �����ϰ� ���ִ� ��ü
	private PreparedStatement pstmt;
	private ResultSet rs;
	//Oracle�� ���� ���ִ� �κ�
	public UserDAO() {//������ ����ɶ����� �ڵ����� db������ �̷������ �ֵ�����
		try {
			String driverName = "oracle.jdbc.driver.OracleDriver";
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "hr9";
			String dbPassword = "1234";
			
			Class.forName(driverName);
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			
			System.out.println("DB�� ���� �Ǿ����ϴ�.\n");
			
		}catch(ClassNotFoundException e) {
			System.out.println("DB ����̹� �ε� ���� :" +e.toString());
		}catch(SQLException sqle) {
			System.out.println("DB ���ӽ��� :"+sqle.toString());
		}catch(Exception e) {
			System.out.println("Unkonwn error");
			e.printStackTrace();
		}
		
			
		
	}
	 public int login(String userID, String userPassword) {
		 String SQL = "SELECT userPassword FROM USER1 WHERE userID = ?";
		 
		 try {
			 //pstmt: prepared statement ������ sql������ db�� �����ϴ� �������� �ν��Ͻ�������
			 pstmt = conn.prepareStatement(SQL);
			 //sql������ ���� ��ŷ����� �����ϴ°� pstmt�� �̿��� �ϳ��� ������ �̸� �غ��ؼ� (����ǥ���)
			 //����ǥ�� �ش��ϴ� ������ ���� ���̵��, �Ű������� �̿� 1)�����ϴ��� 2)��� ��������
			 pstmt.setString(1, userID);
			 //rs:result set�� �������
			 rs = pstmt.executeQuery();
			 //����� �����Ѵٸ� ����
			 if(rs.next()) {
				 //�н����� ��ġ�Ѵٸ� ����
				 if(rs.getString(1).equals(userPassword)) {
					 return 1;//�α伺��
				 }else
					 return 0;//��� ����ġ
			 }return -1;//���̵� ����
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }return -2;//�����ͺ��̽� ������ �ǹ�
	 }
	 
	 
	 public int join(User user) {
		 String SQL = "INSERT INTO USER1 VALUES (?,?,?,?,?)";
		 try {
			 pstmt = conn.prepareStatement(SQL);
			 pstmt.setString(1, user.getUserID());
			 pstmt.setString(2, user.getUserPassword());
			 pstmt.setString(3, user.getUserName());
			 pstmt.setString(4, user.getUserGender());
			 pstmt.setString(5, user.getUserEmail());
			 return pstmt.executeUpdate();
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 return -1;//DB����
	 }
	 
	 public int updateUser(User user) {
		 
		 try {
			String orgPassword = user.getUserPassword();
			
			String SQL = "SELECT userPassword FROM User1 WHERE userId = ?";
			
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {		//�ش� ���̵� DB�� ����
				String dbUserPassword = rs.getString("userPassword");	//������ �ѱ� ��ȣ�� DB���� ������ ��ȣ�� ��ġ�ϴ��� Ȯ��
				
				if(orgPassword.equals(dbUserPassword)) {
					SQL = "UPDATE USER1 SET userName = ?, userGender = ?, userEmail = ? WHERE userId = ?";
					
					pstmt = conn.prepareStatement(SQL);
					pstmt.setString(1, user.getUserName());
					pstmt.setString(2, user.getUserGender());
					pstmt.setString(3, user.getUserEmail());
					pstmt.setString(4, user.getUserID());
					
					pstmt.executeQuery();
					
					return 1;	//update ����
				} else {
					return 0;	//���̵� ���� but ��ȣ ����ġ
				}
			}
		 } catch(Exception e) {
			 e.printStackTrace();
		 }
		 return -1;
	 }
	 
	 
	 public User getUser(String userID, String userPassword) {
		 User user = null;
		 
		 try {
			 
			 String orgPassword = userPassword;
			 
			 String SQL = "SELECT * FROM USER1 WHERE userID = ?";
			 pstmt = conn.prepareStatement(SQL);
			 pstmt.setString(1, userID);
			 rs = pstmt.executeQuery();
			 
			 if(rs.next()) {
				 String dbUserPassword = rs.getString("userPassword");
				 
				 if(orgPassword.equals(dbUserPassword)) {
					 user = new User();
					 
					 user.setUserID(rs.getString("userID"));
					 user.setUserPassword(rs.getString("userPassword"));
					 user.setUserName(rs.getString("userName"));
					 user.setUserGender(rs.getString("userGender"));
					 user.setUserEmail(rs.getString("userEmail"));
				 }
			 }
		 } catch(Exception e) {
			 e.printStackTrace();
		 }
		 return user;
	 }
	 
 }