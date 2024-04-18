package com.jdbc.ok;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jdbc.domain.UserDAO;
import com.jdbc.domain.UserVO;

@WebServlet("/update_ok")
public class UpdateOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateOk() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//form에서 들어오는 값 처리...
	      request.setCharacterEncoding("utf-8");
	      String id = request.getParameter("id");
	      String name = request.getParameter("name");
	      String phone1 = request.getParameter("phone1");
	      String phone2 = request.getParameter("phone2");
	      String gender = request.getParameter("gender");
	      
	      /*
	       * 1. 폼데이터 겂을 VO에 저장
	       * 2. DAO객체를 생성하고 update메서드로 vo객페 전달
	       * 3. update메서드 안에서는 executeUpdate() 메서드로 실행
	       * 	1을 반화하면 update_success.jsp로 이등
	       * 	0을 반환하면 mypag.jsp로 이동
	       *
	       * sql = "update user set name = ?, phone1=?, phone2=?,
	       * 		gender=? where id=?"
	       */
	   // 폼 데이터 값을 UserVO 객체에 저장
	      UserVO vo = new UserVO();
	      vo.setId(id); // 아이디는 수정하지 않으므로 폼 데이터에서 가져와서 설정
	      vo.setName(name);
	      vo.setPhone1(phone1);
	      vo.setPhone2(phone2);
	      vo.setGender(gender);

	      // DAO 객체 생성
	      UserDAO dao = UserDAO.getInstance();

	      // DAO 객체를 통해 update 메서드 호출
	      int result = dao.update(vo);

	      // update 결과에 따라 리다이렉트 처리
	      if(result == 1) {
	          response.sendRedirect("update_success.jsp");
	      } else {
	          response.sendRedirect("mypage.jsp");
	      }
	}

}
