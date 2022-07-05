package appController;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import appModels.customerDetails;
import appModels.customerModel;
import appModels.loanModel;
import databaseConnection.connectionDB;
public class appController {
	static Connection con;
	static PreparedStatement ps;
	public customerModel getCustomer(String username, String password) {
		customerModel cus = new customerModel();
		try {
			con = connectionDB.getcon();
			System.out.println("i am here");
			ps = con.prepareStatement("select * from sql6503464.bank_customers where username = ? and password = ?");

			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				cus.setUsername(rs.getString(1));
				cus.setPassword1(rs.getString(2));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return cus;
	}
	public customerDetails get_cusdetails(String username) {
		customerDetails cusmodel =  new customerDetails();
		try {
			con = connectionDB.getcon();
			ps = con.prepareStatement("select NAME,ACCOUNT_NUMBER,BANK_BALANCE from sql6503464.bank_customers where USERNAME = ?");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				cusmodel.setAcc_num(rs.getInt("ACCOUNT_NUMBER"));
				cusmodel.setName(rs.getString("NAME"));
				cusmodel.setBbalance(rs.getInt("BANK_BALANCE"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return cusmodel;
	}
	public loanModel get_loandetails(int acc_num) {
		loanModel lm = new loanModel();
		try {
			con = connectionDB.getcon();
			ps = con.prepareStatement("select LOAN_ACC_NUMBER,L_AMOUNT,L_PAID,L_BALANCE from sql6503464.loan_accounts where ACCOUNT_NUMBER = ?");
			ps.setInt(1, acc_num);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				lm.setL_accnum(rs.getString("LOAN_ACC_NUMBER"));
				lm.setL_amount(rs.getInt("L_AMOUNT"));
				lm.setL_paid(rs.getInt("L_PAID"));
				lm.setL_balance(rs.getInt("L_BALANCE"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return lm;
		
	}
}
