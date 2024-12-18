public class Prime{
	public static void main(String arr[]){
		int i=1,count=0,j,temp=0;
		System.out.print("1 ");
		for(i=1;count<20;i++){
			for(j=2;j<=i/2;j++){
				if(i%j==0){
					temp=0;
					break;
				}
				else{
					temp=1;
				}
			}
			if(temp==1){
				count++;
				System.out.print(i+", ");
			}
		}
	}
}