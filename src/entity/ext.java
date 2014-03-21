package entity;

public class ext {
	private String countOfCurrent;
    private int   countInt;
	public ext(int countInt,String countOfCurrent)
	{
		this.countInt =countInt;
		this.countOfCurrent = countOfCurrent;
	}
	public int getCountInt() {
		return countInt;
	}

	public void setCountInt(int countInt) {
		this.countInt = countInt;
	}

	
	public String getCountOfCurrent() {
		return countOfCurrent;
	}

	public void setCountOfCurrent(String countOfCurrent) {
		this.countOfCurrent = countOfCurrent;
	}
	 

}
