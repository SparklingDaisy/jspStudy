package yong.aop;

import org.aspectj.lang.ProceedingJoinPoint;

public class YongTimerAOP {
	
	public Object yongTime(ProceedingJoinPoint jp){ 	//어떤 데이터가 오더라도 토스할 수 있도록 오브젝트로 선언
		
		Object result=null;
		//전처리 영역
		System.out.println("[yongTimer AOP구동됨!]");
		long start=System.currentTimeMillis();
		
		//핵심기능
		;try {
			result=jp.proceed();
		} catch (Throwable e) {
			e.printStackTrace();
		}
		//후처리 영역
		
		long end=System.currentTimeMillis();
		long timeResult=end-start;
		System.out.println("[기능 경과 시간:"+timeResult+"m/s]");
		System.out.println("[yongTimer AOP 종료됨!]");
		
		
		return result;
		
	}

}
