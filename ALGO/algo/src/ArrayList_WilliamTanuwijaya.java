package collection;

import java.util.*;

public class ArrayList_WilliamTanuwijaya {

    public static void main(String[] args) {
        ArrayList<String> a = new ArrayList<String>();

        a.add("IF2A");
        a.add("IF2B");
        a.add(1, "IF2C");

        Iterator it = a.iterator();
        while (it.hasNext()) {
            System.out.println(it.next());
        }
    }

}