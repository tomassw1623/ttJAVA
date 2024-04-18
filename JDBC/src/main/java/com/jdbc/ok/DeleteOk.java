package com.jdbc.ok;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.domain.UserDAO;
import com.jdbc.domain.UserVO;

@WebServlet("/delete_ok")
public class DeleteOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteOk() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 	delete from 테이블명 where id = ?
		 * 
		 * 	1. 아이디는 세션에서 얻는다
		 * 	2. pstmt를 이용히여 삭제 진행
		 * 	3. executeUpdate() 메서드를 통해서 sql문을 실행하고
		 * 	  1을 반환하면 세션 전부다 삭제후 login.jsp로 이동
		 * 	  0을 반환하면 mypage.jsp로 이동
		 */
		  HttpSession session = request.getSession();
		    String id = (String)session.getAttribute("user_id");
		    
		    UserDAO dao = UserDAO.getInstance();
		    
		    // 회원 정보를 가져옵니다.
		    UserVO vo = dao.getInfo(id);
		    
		    // 회원 정보가 있다면 삭제를 시도합니다.
		    if(vo != null) {
		        // 회원 정보를 삭제합니다.
		        int result = dao.delete(id);
		        
		        // 삭제 결과에 따라 처리합니다.
		        if(result == 1) {
		            // 세션을 전부 삭제합니다.
		            session.invalidate();
		            
		            // login.jsp로 이동합니다.
		            response.sendRedirect("login.jsp");
		        } else {
		            // 삭제 실패 시 mypage.jsp로 이동합니다.
		            response.sendRedirect("mypage.jsp");
		        }
		    } 
		
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}