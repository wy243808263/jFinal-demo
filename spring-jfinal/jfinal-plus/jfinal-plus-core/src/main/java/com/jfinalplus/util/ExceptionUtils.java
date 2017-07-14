package com.jfinalplus.util;

import java.lang.reflect.InvocationTargetException;

public abstract class ExceptionUtils {

	public static RuntimeException unchecked(Throwable e) {
		if (e instanceof RuntimeException) { return (RuntimeException) e; }
		if (e instanceof InvocationTargetException) { return unchecked(((InvocationTargetException) e).getTargetException()); }
		return new RuntimeException(e);
	}

	/**
	 * Throw checked exceptions like runtime exceptions.
	 *
	 * see: http://blog.jooq.org/2012/09/14/throw-checked-exceptions-like-runtime-exceptions-in-java/
	 */
	public static void doThrow(Throwable e) {
		ExceptionUtils.<RuntimeException> doThrow0(e);
	}

	@SuppressWarnings("unchecked")
	static <E extends Throwable> void doThrow0(Throwable e) throws E {
		throw (E) e;
	}
}
