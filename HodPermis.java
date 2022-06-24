package status;
interface Approval{
	public boolean approve();
}

abstract class Adminis implements Approval{
	public boolean approve() {
		boolean flag=true;
		
		return flag;
	}
}

public class HodPermis extends Adminis{
	@Override
	public boolean approve() {
		boolean flag1=true,x,f_status;
		
		if(flag1==true) {
			x=super.approve();
			f_status=flag1&x;
			return f_status;
		}
		else
			return false;
	}
}
