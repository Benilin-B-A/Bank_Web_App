package com.bank.pojo;

public class Customer extends User {

	private long aadharNumber;
	private String panNumber;
	private int numberOfAccounts;

	public long getAadharNum() {
		return aadharNumber;
	}

	public void setAadharNum(long aadharNum) {
		this.aadharNumber = aadharNum;
	}

	public String getPanNum() {
		return panNumber;
	}

	public void setPanNum(String panNum) {
		this.panNumber = panNum;
	}

	public void setNoOfAcc(int noOfAcc) {
		this.numberOfAccounts = noOfAcc;
	}

	public int getNoOfAcc() {
		return this.numberOfAccounts;
	}

	public String toString() {
		return (super.toString() + "\nAadhar Num : " + this.aadharNumber + "\nPan Num : " + this.panNumber +
				"\nNoOfAcc : " + this.numberOfAccounts);
	}
}
