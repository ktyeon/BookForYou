package com.bookforyou.bk4u.book.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookforyou.bk4u.book.model.dao.BookDao;
import com.bookforyou.bk4u.book.model.vo.Book;
import com.bookforyou.bk4u.common.model.vo.PageInfo;

@Service
public class BookServiceImpl implements BookService {
	
	@Autowired
	private BookDao bookDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * [관리자] 전체 도서 개수 조회 (한진)
	 */
	@Override
	public int selectAllListCount() {
		return bookDao.selectAllListCount(sqlSession);
	}

	/**
	 * [관리자] 전체 도서 목록 조회 (한진)
	 */
	@Override
	public ArrayList<Book> selectAdminBookList(PageInfo pi) {
		return bookDao.selectAdminBookList(sqlSession, pi);
	}
	
	@Override
	public int selectSearchBookCount(HashMap<String, String> map) {
		return bookDao.selectSearchBookCount(sqlSession, map);
	}
	
	@Override
	public ArrayList<Book> selectSearchBook(PageInfo pi, String condition, String keyword){
		return bookDao.selectSearchBook(sqlSession, pi, condition, keyword);
	}

	/**
	 * [관리자] '판매중'인 도서 개수 조회 (한진)
	 */
	@Override
	public int selectStatusYCount() {
		return bookDao.selectStatusYCount(sqlSession);
	}

	/**
	 * [관리자] 게시 'Y'인 도서 개수 조회 (한진)
	 */
	@Override
	public int selectSelStatusYCount() {
		return bookDao.selectSelStatusYCount(sqlSession);
	}


}