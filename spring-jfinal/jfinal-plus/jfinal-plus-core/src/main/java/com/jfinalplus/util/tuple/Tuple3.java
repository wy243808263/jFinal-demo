package com.jfinalplus.util.tuple;

@SuppressWarnings("serial")
public class Tuple3<V1, V2, V3> extends Tuple2<V1, V2> {
	V3 v3;

	public static <V1, V2, V3> Tuple3<V1, V2, V3> with(final V1 v1, final V2 v2, final V3 v3) {
		return new Tuple3<V1, V2, V3>(v1, v2, v3);
	}

	protected Tuple3(V1 v1, V2 v2, V3 v3) {
		super(v1, v2);
		this.v3 = v3;
	}

	public V3 v3() {
		return v3;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) { return true; }
		if ((o == null) || (getClass() != o.getClass())) { return false; }

		Tuple3<?, ?, ?> tuple3 = (Tuple3<?, ?, ?>) o;

		if (v1 != null ? !v1.equals(tuple3.v1) : tuple3.v1 != null) { return false; }
		if (v2 != null ? !v2.equals(tuple3.v2) : tuple3.v2 != null) { return false; }
		if (v3 != null ? !v3.equals(tuple3.v3) : tuple3.v3 != null) { return false; }

		return true;
	}

	@Override
	public int hashCode() {
		int result = v1 != null ? v1.hashCode() : 0;
		result = 31 * result + (v2 != null ? v2.hashCode() : 0);
		result = 31 * result + (v3 != null ? v3.hashCode() : 0);
		return result;
	}

	@Override
	public String toString() {
		return "Tuple{v1=" + v1 + ", v2=" + v2 + ", v3=" + v3 + '}';
	}
}
