package yong.bbs.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BbsServiceImple implements BbsService {
	
	private BbsDAO bbsDao;
	
	public BbsServiceImple(BbsDAO bbsDao) {
		super();
		this.bbsDao = bbsDao;
	}

	@Override
	public int bbsWrite(BbsDTO dto) {
		int result=bbsDao.bbsWrite(dto);
		return result;
	}

	@Override
	public List<BbsDTO> bbsList(int cp, int ls) {
		int start=(cp-1)*ls+1;
		int end=cp*ls;
		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end",end);
		List<BbsDTO> list=bbsDao.bbsList(map);
		return list;
	}

	@Override
	public BbsDTO bbsContent(int idx) {
		BbsDTO dto=bbsDao.bbsContent(idx);
		return dto;
	}
	
	@Override
	public int bbsTotalCnt() {
		int count=bbsDao.bbsTotalCnt();
		return count;
	}

}
