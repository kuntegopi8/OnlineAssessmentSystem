package com.online.OnlineRecrutmentSystemBackend.model;
import java.sql.Date;

public class RecruitmentDrive {
	/*---------------+--------------+------+-----+---------+----------------+
| id            | int          | NO   | PRI | NULL    | auto_increment |
| Company_ID    | int          | NO   | MUL | NULL    |                |
| Name          | varchar(100) | NO   |     | NULL    |                |
| Date          | date         | NO   |     | NULL    |                |
| Minimum_Score | int          | NO   |     | NULL    |                |
| Status        | varchar(20)  | NO   |     | Open    |                | */
	
	 private int id;
	    private int companyId;
	    private String name;
	    private Date date;
	    private int minimumScore;
	    private String status;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public int getCompanyId() {
			return companyId;
		}
		public void setCompanyId(int companyId) {
			this.companyId = companyId;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public Date getDate() {
			return date;
		}
		public void setDate(Date date) {
			this.date = date;
		}
		public int getMinimumScore() {
			return minimumScore;
		}
		public void setMinimumScore(int minimumScore) {
			this.minimumScore = minimumScore;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}

}
