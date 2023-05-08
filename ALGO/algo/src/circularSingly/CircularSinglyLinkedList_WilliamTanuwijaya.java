package circularSingly;

class Node {
    int data;
    Node pointer;

    public Node() {
        this.data = 0;
        this.pointer = null;

    }

    public Node(int data, Node pointer) {
        this.data = data;
        this.pointer = pointer;
    }

    public int getData() {
        return data;
    }

    public void setData(int data) {
        this.data = data;
    }

    public Node getPointer() {
        return pointer;
    }

    public void setPointer(Node pointer) {
        this.pointer = pointer;
    }

}

class Operasi {
    Node awal;
    Node akhir;
    int size;

    public Operasi() {
        this.awal = null;
        this.akhir = null;
        this.size = 0;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public int getSize() {
        return this.size;
    }

    public void insert_awal(int x) {
        Node ptr = new Node(x, null);
        ptr.setPointer(awal);
        if (isEmpty()) {
            awal = ptr;
            ptr.setPointer(awal);
            akhir = awal;
        } else {
            akhir.setPointer(ptr);
            awal = ptr;
        }
    }
}

public class CircularSinglyLinkedList_WilliamTanuwijaya {

    public static void main(String[] args) {

    }
}