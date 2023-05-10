package collection;

import java.util.*;

public class Stack_Collection_WilliamTanuwijaya {

    public static void main(String[] args) {
        Stack<String> s = new Stack<String>();

        s.add("IF2A");
        s.add("IF2B");
        s.add("IF2C");
        System.out.println("Top elemen= " + s.peek());
        Iterator it = s.iterator();
        while (it.hasNext()) {
            System.out.println(it.next() + " ");
        }
        System.out.println("|n Pop elemen = " + s.pop());
    }

}