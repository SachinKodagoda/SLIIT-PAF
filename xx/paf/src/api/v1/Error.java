package api.v1;

public class Error {

	// 000: No Error
	
	// 1xxx: Common Errors
	// 1001: Database Connection Error. Try later!
	// 1002: Exception Occured. Try later!
	
	// 2xxx: Insert
	// 2001: Can not insert data. Try later!
	// 2002: Data is already available in the database
	// 2003: Invalid Inputs
	
	// 3xxx: Update
	// 3001: Can not update data. Try later!
	// 3002: No such data in the database
	// 3003: Invalid Inputs
	
	// 4xxx: Delete
	// 4001: Can not delete data. Try later!
	// 4002: No such data in the database
	
	// 5xxx: Retrieve
	// 5001: Can not retrieve data. Try later!
	
	private int code;
	private String errorMessage;
	private String successMessage;

	public Error() {
		super();
		this.code = 0;
		this.errorMessage = "No Error";
		this.successMessage = "";
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public String getSuccessMessage() {
		return successMessage;
	}

	public void setSuccessMessage(String successMessage) {
		this.successMessage = successMessage;
	}

}
