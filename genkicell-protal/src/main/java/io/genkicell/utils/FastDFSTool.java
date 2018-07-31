package io.genkicell.utils;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.commons.io.FilenameUtils;
import org.csource.fastdfs.ClientGlobal;
import org.csource.fastdfs.StorageClient1;
import org.csource.fastdfs.TrackerClient;
import org.csource.fastdfs.TrackerServer;
import org.springframework.core.io.ClassPathResource;

/**
 * FastDFS工具类
 * 
 * @author Administrator
 */
public class FastDFSTool {
	/**
	 * 上传文件到FastDFS
	 * 
	 * @param bs
	 *            文件字节数组
	 * @param filename
	 *            文件名
	 * @return 上传成功后，存放在fastdfs中的文件位置及文件名
	 * @throws FileNotFoundException
	 * @throws IOException
	 * @throws Exception
	 */
	public static String uploadFile(byte[] bs, String filename)
			throws FileNotFoundException, IOException, Exception {
		ClassPathResource resource = new ClassPathResource("fdfs_client.conf");
       // 初始化客户端
		ClientGlobal.init(resource.getClassLoader()
				.getResource("fdfs_client.conf").getPath());

		// 创建老大客户端
		TrackerClient trackerClient = new TrackerClient();
		// 通过老大客户端取得连接获得老大服务器端
		TrackerServer connection = trackerClient.getConnection();
		// 小弟客户端
		StorageClient1 storageClient1 = new StorageClient1(connection, null);
		// 获得文件名的扩展名
		String extension = FilenameUtils.getExtension(filename);

		String upload_file1 = storageClient1.upload_file1(bs, extension, null);

		return upload_file1;
	}
}
