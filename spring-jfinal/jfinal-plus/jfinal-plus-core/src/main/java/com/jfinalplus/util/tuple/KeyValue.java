package com.jfinalplus.util.tuple;

import java.io.Serializable;
import java.util.Map;

@SuppressWarnings("serial")
public final class KeyValue<K, V> implements Serializable, Map.Entry<K, V> {
	final K name;
	V value;

	public static <K, V> KeyValue<K, V> create(K name, V value) {
		return new KeyValue<K, V>(name, value);
	}

	public KeyValue(K name, V value) {
		this.name = name;
		this.value = value;
	}

	@Override
	public K getKey() {
		return name;
	}

	public K getName() {
		return name;
	}

	@Override
	public V getValue() {
		return value;
	}

	@Override
	public V setValue(V value) {
		V old = this.value;
		this.value = value;
		return old;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) { return true; }
		if ((o == null) || (getClass() != o.getClass())) { return false; }

		KeyValue<?, ?> pair = (KeyValue<?, ?>) o;

		if (name != null ? !name.equals(pair.name) : pair.name != null) { return false; }
		if (value != null ? !value.equals(pair.value) : pair.value != null) { return false; }

		return true;
	}

	@Override
	public int hashCode() {
		int result = name != null ? name.hashCode() : 0;
		result = 31 * result + (value != null ? value.hashCode() : 0);
		return result;
	}

	@Override
	public String toString() {
		return "Pair{name=" + name + ", value=" + value + '}';
	}
}
