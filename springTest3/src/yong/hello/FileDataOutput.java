package yong.hello;

import java.io.*;


public class FileDataOutput implements DataOutput {
	
	private String filename;
	
	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}



	@Override
	public void output(String msg) throws Exception {
		
		FileWriter fw=new FileWriter(filename);
		
		fw.write(msg);
		fw.close();
		
	}

}
