import java.util.Calendar;

boolean savePDF = false;

// PDF Timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("output/%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

void pdf(){

  // PDF-Export
  // this line will start pdf export, if the variable savePDF was set to true 
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");
  
    // PDF
  // end of pdf recording
  if (savePDF) {
    savePDF = false;
    endRecord();
  }
  
}
