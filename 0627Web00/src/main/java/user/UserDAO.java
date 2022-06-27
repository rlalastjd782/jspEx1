package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//Data Access Object = 데이터에 접근하는 역할늘 맡은 객체
public class UserDAO {
	//외울것
	private Connection conn; // 자바랑 db랑 연결하는 객체
	private PreparedStatement pstmt; //문장 (쿼리) 준비
	private ResultSet rs ; // 쿼리실행후 결과를 담을 객체
	
	
	public UserDAO() {
		
		try {
			String dbURL = "jdbc:mysql://localhost3306/JSP_TEST?serverTimezone=UTC";
			//jdbc : Java Database Connectivity
			String dbId = "root";
			String dbPassword = "system123";
			// 데이터베이스 드라이버를 로드할 뿐 연결에 관한 행동은 아무것도 안한다.
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbId, dbPassword);
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		
		}
	
	}
	
	//로그인 기능 수행 함수. 로그인 화면에서 유저가 아이디 비번을 치고 밑의 로그인 버튼을 눌렸을때 실행
	public int login(String userId, String userPassword) {
		// 쿼리문 입력 물음표는 유저가 입력값에대한 값이 달라지는 것임
		String SQL = "SELECT userPassword FROM TABLE_USER WHERE userId=?";
		//실행할 쿼리. 유저가친 아이디의 비밀번호를 가져온다
		try {
			pstmt = conn.prepareStatement(SQL);//문자열 쿼리를 pstmt에 대입
			pstmt.setString(1, userId); // 첫번째 물음표에 userID값 대입
			//프로그래밍 언어에서 인덱스는 0 부터 시작이지만 쿼리에서는 1부터 시작한다.
			rs = pstmt.executeQuery();
			if(rs.next()) {//결과의 리스트를 받았는데 다음행의 데이터가있으면
				if(rs.getString(1).equals(userPassword)) {
					//남은것의 첫번째의 값이 login함수로 호출할때 전달받은 비밀번호와 같은지 검사.
					return 1;// 로그인 성공
				}else {
					return 0; // 로그인 실패
				}
			}
			return -1;	// 아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -2;// 데이터 베이스 오류
	}
	
}
