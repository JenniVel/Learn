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

    public Node getAwal() {
        return awal;
    }

    public void setAwal(Node awal) {
        this.awal = awal;
    }

    public Node getAkhir() {
        return akhir;
    }

    public void setAkhir(Node akhir) {
        this.akhir = akhir;
    }

    public void setSize(int size) {
        this.size = size;
    }

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
        size++;
    }

    public void insert_akhir(int x) {
        Node ptr = new Node(x, null);
        ptr.setPointer(awal);
        if (isEmpty()) {
            awal = ptr;
            ptr.setPointer(awal);
            akhir = awal;
        } else {
            akhir.setPointer(ptr);
            akhir = ptr;
        }
        size++;
    }

    public void tampil() {
        System.out.println("data Singly Linked List = ");
        if (isEmpty()) {
            System.out.println("Data kosong !!!");
        }
        if (this.awal.getPointer() == null) {
            System.out.println(this.awal.getData());
            return;
        }
        Node ptr = this.awal;
        System.out.print(this.awal.getData() + " -> ");
        ptr = this.awal.getPointer();
        while (ptr.getPointer() != this.awal) {
            System.out.print(ptr.getData() + " -> ");
            ptr = ptr.getPointer();
        }
        System.out.print(ptr.getData() + " -> ");
        ptr = ptr.getPointer();
        System.out.println(ptr.getData());
    }
}

public class CircularSinglyLinkedList_WilliamTanuwijaya {

    public static void main(String[] args) {
        Operasi op = new Operasi();
        op.insert_awal(10);
        op.insert_awal(20);
        op.tampil();
        op.insert_akhir(100);
        op.tampil();
    }

}