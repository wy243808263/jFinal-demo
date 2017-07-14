package com.jfinalplus.util.tuple;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Tuple2<V1, V2> implements Serializable {
	final V1 v1;
	final V2 v2;

	public static <V1, V2> Tuple2<V1, V2> with(final V1 v1, final V2 v2) {
		return new Tuple2<V1, V2>(v1, v2);
	}

	protected Tuple2(V1 v1, V2 v2) {
		this.v1 = v1;
		this.v2 = v2;
	}

	public V1 v1() {
		return v1;
	}

	public V2 v2() {
		return v2;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) { return true; }
		if ((o == null) || (getClass() != o.getClass())) { return false; }

		Tuple2<?, ?> tuple2 = (Tuple2<?, ?>) o;

		if (v1 != null ? !v1.equals(tuple2.v1) : tuple2.v1 != null) { return false; }
		if (v2 != null ? !v2.equals(tuple2.v2) : tuple2.v2 != null) { return false; }

		return true;
	}

	@Override
	public int hashCode() {
		int result = v1 != null ? v1.hashCode() : 0;
		result = 31 * result + (v2 != null ? v2.hashCode() : 0);
		return result;
	}

	@Override
	public String toString() {
		return "Tuple{v1=" + v1 + ", v2=" + v2 + '}';
	}
}
