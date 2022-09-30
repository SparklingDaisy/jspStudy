package yong.bbs.model;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;

public class BbsDAOImple implements BbsDAO{
	
	private SqlSessionTemplate sqlMap;
	
	public BbsDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int bbsWrite(BbsDTO dto) {
		int result=sqlMap.insert("bbsInsert",dto);
		return result;
	}
	
	@Override
	public List<BbsDTO> bbsList(Map map) {
		List<BbsDTO> list=sqlMap.selectList("bbsList",map);
		return list;
	}
	
	@Override
	public BbsDTO bbsContent(int idx) {
		BbsDTO dto=sqlMap.selectOne("bbsContent",idx);
		return dto;
	}
	
	@Override
	public int bbsTotalCnt() {
		int count=sqlMap.selectOne("bbsTotalCnt");
		return count;
	}

}
