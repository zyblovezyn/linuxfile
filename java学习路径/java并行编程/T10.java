/*************************************************************************
	> File Name: T10.java
	> Author: ma6174
	> Mail: ma6174@163.com 
	> Created Time: Sat 13 Apr 2019 05:53:02 AM EDT
 ************************************************************************/
packet test
import java.util.concurrent.TimeUnit;

public class T10{
	volatile boolean running = true;
	void m(){
		System.out.println("m start");
		while(running){
		}
	 System.out.println("m end"); 	
	}

	public static void main(String[] args){
		T10 t=new T10();
		new Thread(t::m,"t").start();
		try{
			TimeUnit.SECONDS.sleep(1);
		}catch(InterruptedException e){
			e.printStackTrace();
		}
		t.running=false;
	}
}
