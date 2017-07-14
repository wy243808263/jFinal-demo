package com.jfinalplus.util;

import java.io.StringReader;
import java.io.StringWriter;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

@SuppressWarnings("unchecked")
public class XmlUtils {

	// --------------------------------------------------
	// unmarshal string -> object
	// --------------------------------------------------

	public static <T> T unmarshal(String src, Class<T> classToBeBound) {
		try {
			Unmarshaller unmar = createUnmarshaller(classToBeBound);
			return (T) unmar.unmarshal(new StringReader(src));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	static <T> Unmarshaller createUnmarshaller(Class<T> classToBeBound) {
		try {
			return JAXBContext.newInstance(classToBeBound).createUnmarshaller();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	// --------------------------------------------------
	// marshal object -> string
	// --------------------------------------------------
	static <T> String marshal(T jaxbElement) {
		StringWriter writer = new StringWriter();
		try {
			Class<T> clazz = (Class<T>) jaxbElement.getClass();
			Marshaller mar = createMarshaller(clazz);
			
			mar.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
			mar.setProperty(Marshaller.JAXB_ENCODING, "UTF-8");
			mar.marshal(jaxbElement, writer);
			return writer.toString();
		} catch (Exception e) {
			throw new RuntimeException(e);
		} 
	}

	static <T> Marshaller createMarshaller(Class<T> classToBeBound) {
		try {
			return JAXBContext.newInstance(classToBeBound).createMarshaller();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
