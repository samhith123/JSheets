import java.io.File;
import java.io.FileInputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.poi.ss.usermodel.Cell;            
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;                     
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

public class RegUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int maxFileSize = 5000 * 1024;
	private int maxMemSize = 400 * 1024;
	private File file;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
		String file=request.getParameter("fname");
	       System.out.println("file name is:"+file);
	             HttpSession session=request.getSession(true);
	           
	             //System.out.println(s_id);
			
		      File excelFile =null;
		   	    
		     
		      Connection con=null;
		      PreparedStatement pst=null;
		      FileInputStream fileInputeStream=null;
		      Workbook workbook=null;
		      Sheet sheet=null;
		      Row row=null;  
		      try
		      {
						Class.forName("com.mysql.jdbc.Driver");  
			             con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/reportgenerator","root","password");  
			             excelFile = new File("/home/samhith/git/repository/JSheet/"+file);//change this directory to get file
				  		   System.out.println("///////"+file);
			  	       fileInputeStream = new FileInputStream(excelFile);     
			  	       System.out.println(fileInputeStream);
			  	       workbook = WorkbookFactory.create(fileInputeStream);
			  	       sheet = workbook.getSheetAt(0); // 0 is to read the first sheet.
			  	      // workbook.getNumberOfSheets(); - using this number you can read all the sheets in the excel sheet
			  	       System.out.println("sheet is"+sheet);
			  	       int lastRow = sheet.getLastRowNum();
			  	      System.out.println("last row is"+lastRow);
			  	      //sheet.getFirstRowNum()+1 used to skip the header part.
			  	       for (int i = sheet.getFirstRowNum(); i <= lastRow; i++) {
			  	       row = (Row) sheet.getRow(i);
			  	       
			  	    
			 	    
			  	       
			                String id = row.getCell(0).getStringCellValue();
			                String password = row.getCell(1).getStringCellValue();
			                String name = row.getCell(2).getStringCellValue();
			                String email = row.getCell(3).getStringCellValue();
			                double phone = row.getCell(4).getNumericCellValue(); 
			                String address = row.getCell(5).getStringCellValue();
			                String dept = row.getCell(6).getStringCellValue();
			                String utype = row.getCell(7).getStringCellValue();
			                System.out.println("111111"+id+password+name+email+phone+address+dept+utype);
			                
			                pst = con.prepareStatement("INSERT INTO users VALUES(?,?,?,?,?,?,?,?)");
			                pst.setString(1, id);
			                pst.setString(2, password);
			                pst.setString(3, name);
			                pst.setString(4, email);
			                pst.setDouble(5, phone);
			                pst.setString(6, address);
			                pst.setString(7, dept);
			                pst.setString(8, utype);
			                int s = pst.executeUpdate();  
			                		                	
			            }
					


			response.sendRedirect("adminhome.jsp");

		} 
		catch (Exception ex) {
			System.out.println(ex);
		}
	}
}