package collection;

import java.util.Iterator;
import java.util.Vector;

public class Vektor_WilliamTanuwijaya {
	public static void main(String[] args) {
		Vector<Integer> v = new Vector<Integer>();
		v.add(1);
		v.add(0, 100);
		v.add(20);
		Iterator it = v.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}

	}
}