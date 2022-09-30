package yong.emp.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;

public class EmpDAOImple implements EmpDAO {
	
	private SqlSessionTemplate sqlMap;
	
	public EmpDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	@Override
	public int empAdd(EmpDTO dto) {
		int result=sqlMap.insert("empInsert", dto);
		return result;
	}
	
	@Override
	public int empDel(String name) {
		int result=sqlMap.delete("empDelete", name);
		return result;
	}
	
	@Override
	public List<EmpDTO> empList(){
		List<EmpDTO> list=sqlMap.selectList("empList");
		return list;
	}
	
	@Override
	public List<EmpDTO> empSearchList(String name){
		List<EmpDTO> list=sqlMap.selectList("empSearchList",name);
		return list;
	}
	
	@Override
	public List<EmpDTO> empSearchIdx(String idx){
		List<EmpDTO> list=sqlMap.selectList("empIdxList",idx);
		return list;
	}
	
	@Override
	public int empUpdate(EmpDTO dto) {
		int result=sqlMap.update("empUpdate", dto);
		return result;
	}
	
	

}
