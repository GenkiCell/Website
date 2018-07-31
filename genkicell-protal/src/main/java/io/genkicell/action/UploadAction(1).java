package io.genkicell.action;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import io.genkicell.utils.FastDFSTool;

/**
 * 上传文件控制器
 * 
 * @author Administrator
 *
 */
@Controller
public class UploadAction {

	// 上传文件
	@RequestMapping(value = "/uploadFile.do")
	@ResponseBody
	public HashMap<String, String> uploadFile(MultipartFile mpf)
			throws FileNotFoundException, IOException, Exception {

		System.out.println(mpf.getOriginalFilename());

		// 将文件上传到分布式文件系统，并返回文件的存储路径及名称
		String uploadFile = FastDFSTool.uploadFile(mpf.getBytes(),
				mpf.getOriginalFilename());
		System.out.println(uploadFile);
		// 返回json格式的字符串（图片的绝对网络存放地址）
		HashMap<String, String> hashMap = new HashMap<String, String>();
		hashMap.put("path", "http://117.48.231.76:8898/" + uploadFile);
		return hashMap;
	}
}
