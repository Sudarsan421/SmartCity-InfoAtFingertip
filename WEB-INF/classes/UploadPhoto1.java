import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class UploadPhoto1 extends HttpServlet{ 
     public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
     response.setContentType("text/html");
     PrintWriter out = response.getWriter();
    String saveFile="";
    String ty="", phid="", fldid="";


    String contentType = request.getContentType();
    if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
    DataInputStream in = new DataInputStream(request.getInputStream());
    int formDataLength = request.getContentLength();
    byte dataBytes[] = new byte[formDataLength];
    int byteRead = 0;
    int totalBytesRead = 0;
    while(totalBytesRead < formDataLength){
    byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
    totalBytesRead += byteRead;
   }
    String file = new String(dataBytes);
    saveFile = file.substring(file.indexOf("filename=\"") + 10);
    saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
    saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
    int lastIndex = contentType.lastIndexOf("=");
    String boundary = contentType.substring(lastIndex + 1,contentType.length());
    int pos;
    pos = file.indexOf("filename=\"");
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    int boundaryLocation = file.indexOf(boundary, pos) - 4;
    int startPos = ((file.substring(0, pos)).getBytes()).length;
    int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
   
    HttpSession ss= request.getSession();
    phid=(String)ss.getAttribute("phid");
    fldid=(String)ss.getAttribute("fldid");
    ty=(String)ss.getAttribute("type");

    saveFile = phid + fldid +saveFile.substring(saveFile.lastIndexOf("."));
    String zz=".//webapps//smartcity//images//photos//"+saveFile;
    String zzz=".//webapps//smartcity//images//photos//";

    System.out.println("file name "+zz +",  userid : "+ phid);

/* saveFile holding the image/video filename, now get the index of . from savefile -> use this value  to substring from savefile to get extention. then attach the vname, imgname from database table with the extention. now this new file name must be stored in saveFile and  in database*/
    File ff = new File(zz);
    FileOutputStream fileOut = new FileOutputStream(ff);
    fileOut.write(dataBytes, startPos, (endPos - startPos));
    fileOut.flush();
    fileOut.close();
    //out.println("You have successfully upload the file:"+saveFile);

    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/smartcity","root","");
        Statement st = con.createStatement();
        ResultSet rs= st.executeQuery("select * from photo where pid='"+phid+"'");
        String oldfile="";
        try{
          if(rs.next()){
	oldfile=rs.getString(fldid);
          }
        }catch(Exception eee){     } 
        
        if(!oldfile.equalsIgnoreCase(saveFile)){
	File f22= new File(zzz+oldfile);
                  f22.delete();
        }
        st.executeUpdate("update photo set  "+fldid+"='"+saveFile+"'  where pid='"+phid+"'");
        con.close();
    } catch(Exception e){
        e.printStackTrace();
   }  
 }

try {

 ServletContext  sc = getServletContext();
 RequestDispatcher rd1= sc.getRequestDispatcher("/ehotelview.jsp");
    rd1.forward(request, response);
}catch(Exception e){     e.printStackTrace();     }
}};