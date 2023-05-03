package threads;

public class DeadlockDemo {

	public static void main(String[] args) {
		final String resource1="pen";
		final String resource2="paper";
		
		//Thread 1 lock resource 1
		Thread thread1=new Thread()
	     {
			public void run()
			{
				synchronized(resource1) {
					System.out.println("Thread 1 locked resource1:pen");
					
					try {
						Thread.sleep(100);
					}
					catch(Exception e)
					{
						System.out.println(e.getMessage());
					}
					
					synchronized(resource2) {
						System.out.println("eants to lock resource 2:paper");
						
					}
					
				}
			}
			
		};
		
		//Thread 2 locks resource 2
		Thread thread2=new Thread()
		{
			
			public void run()
			{
				synchronized(resource2) {
					System.out.println("Thread 2 locked resource 2:paper");
					
					
					try {
						Thread.sleep(100);
					}
					catch(Exception e)
					{
						System.out.println(e.getMessage());
					}
				}
			}
		};
		
		thread1.start();
	
//		try {
//			thread1.join();
//		}
//		catch(InterruptException e)
//		{
//			System.out.println(e.getMessage());
//		}
	
		thread2.start();
		
				
	

	}

}
