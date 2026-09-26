wkDate = new Date(document.lastModified);
wkY = wkDate.getFullYear();   if( wkY < 10 ) { wkY = "0" + wkY; }
wkM = wkDate.getMonth()+1;    if( wkM < 10 ) { wkM = "0" + wkM; }
wkD = wkDate.getDate();       if( wkD < 10 ) { wkD = "0" + wkD; }
document.writeln("<div class='lastupdate'>Last Update : " + wkY + "\/" + wkM + "\/" + wkD + "<\/div>");
