package io.genkicell.download;

import java.io.File;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import io.genkicell.utils.CommonConfig;

@Controller
public class DownloadAction {
	
    @Autowired  
    private CommonConfig CommonConfig; //引用统一的参数配置类  
	
	@RequestMapping("{filename}/download.do")
	public ResponseEntity<byte[]> download(HttpServletRequest req, HttpServletResponse resp,
			@PathVariable("filename") String filename) throws Exception {
		String contextPath = req.getSession().getServletContext().getRealPath("documents");
		if ("WP".equals(filename)){
			filename = CommonConfig.DOWNLOAD_FILENAME;
			System.out.println(filename);
		}
		File file = new File(contextPath +"/"+ filename);
		HttpHeaders headers = new HttpHeaders();
		String downfileName = new String(filename.getBytes("UTF-8"), "iso-8859-1");// 解决中文名称乱码
		headers.setContentDispositionFormData("attachment", downfileName);
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
	}
}