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
	 
	 //user����
	 public int updateUser(String userId, String userName, String userGender, String userEmail) {
		 String SQL = "UPDATE USER1 SET userName = ?, userGender = ?, userEmail = ? WHERE userId = ?";
		 try {
			 
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userName);
			pstmt.setString(2, userGender);
			pstmt.setString(3, userEmail);
			pstmt.setString(4, userId);
			
			pstmt.executeUpdate();
			
			return 1;	//update ����
				
			
		 } catch(Exception e) {
			 e.printStackTrace();
			 System.out.println("������Ʈ ����");
		 }
		 return -1;
	 }
	 
	 
	 public User getUser(String userId) {
		 User user = null;
		 
		 try {
			 
			 String SQL = "SELECT * FROM USER1 WHERE userID = ?";
			 pstmt = conn.prepareStatement(SQL);
			 pstmt.setString(1, userId);
			 rs = pstmt.executeQuery();
			 
			 if(rs.next()) {
				 String dbUserId = rs.getString("userId");
				 if(userId.equals(dbUserId)) {
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
	 
	// ���� �Լ�
	public int deleteUser(String userId) {
		String SQL = "DELETE user1 WHERE userId = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userId);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
		}
 
 
	 
 }