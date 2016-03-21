package cn.lzc.utils;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;




public class DBAccess {
	
	public static SqlSession getSqlSession() throws Exception{
		Reader reader = Resources.getResourceAsReader("cn/lzc/config/Configuration.xml");
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(reader);
		SqlSession	sqlSession=	sqlSessionFactory.openSession();
	return sqlSession;
	}
	
/*	@Test
	public void test() throws Exception{
		Reader reader = Resources.getResourceAsReader("cn/lzc/config/Configuration.xml");
		SAXReader domreader = new SAXReader();
		Document read = domreader.read(reader);
		Element rootElement = read.getRootElent();
		 List<DefaultElement> nodes = rootElement.elements("plugins");
		 List<DefaultElement> plugin= nodes.get(0).elements("plugin");
		Attribute attribute = plugin.get(0).attribute("pageNumber");
		System.out.println(attribute.toString());me
		 List<Attribute> bookAttrs= plugin.get(0).attributes();
		 for (Attribute attr : bookAttrs) {
				System.out.println("属性名：" + attr.getName() + "--属性值："
						+ attr.getValue());
			}
		System.out.println(reader.toString()+"------------------reader"+plugin.get(0));
	}
	@Test
	public void test1() throws IOException{
		SAXReader reader = new SAXReader();
		Reader reader1 = Resources.getResourceAsReader("cn/lzc/config/Configuration.xml");
		try {
			// 通过reader对象的read方法加载books.xml文件,获取docuemnt对象。
			Document document = reader.read(reader1);
			// 通过document对象获取根节点bookstore
			Element rootElement = document.getRootElement();
			Iterator it = rootElement.elementIterator();
			Element plugins = (Element) it.next();
			Element element = plugins.element("plugin");
			System.out.println(element);
			
			while (it.hasNext()) {
				Element el = (Element) it.next();
				System.out.println(el);
				
				List<Attribute> elAttrs = el.attributes();
				for (Attribute attr : elAttrs) {
					System.out.println("属性名：" + attr.getName() + "--属性值："
							+ attr.getValue());
				}
				
			}
			// 通过element对象的elementIterator方法获取迭代器
			Iterator it = rootElement.elementIterator();
			// 遍历迭代器，获取根节点中的信息（书籍）
			while (it.hasNext()) {
				Element book = (Element) it.next();
				// 获取book的属性名以及 属性值
				List<Attribute> bookAttrs = book.attributes();
				for (Attribute attr : bookAttrs) {
					System.out.println("属性名：" + attr.getName() + "--属性值："
							+ attr.getValue());
				}
				Iterator itt = book.elementIterator();
				while (itt.hasNext()) {
					Element bookChild = (Element) itt.next();
					System.out.println("节点名：" + bookChild.getName() + "--节点值：" + bookChild.getStringValue());
				}
				System.out.println("=====结束遍历某一本书=====");
			}
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}*/
	
}
