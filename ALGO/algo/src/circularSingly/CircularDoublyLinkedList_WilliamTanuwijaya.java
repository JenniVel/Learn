package circularSingly;

class Node_CircularDoublyLL {
    private int data;
    private Node_CircularDoublyLL prev;
    private Node_CircularDoublyLL next;

    public Node_CircularDoublyLL() {
        this.data = 0;
        this.prev = null;
        this.next = null;
    }

    public Node_CircularDoublyLL(int data, Node_CircularDoublyLL prev, Node_CircularDoublyLL next) {
        this.data = data;
        this.prev = prev;
        this.next = next;
    }

    public int getData() {
        return data;
    }

    public void setData(int data) {
        this.data = data;
    }

    public Node_CircularDoublyLL getPrev() {
        return prev;
    }

    public void setPrev(Node_CircularDoublyLL prev) {
        this.prev = prev;
    }

    public Node_CircularDoublyLL getNext() {
        return next;
    }

    public void setNext(Node_CircularDoublyLL next) {
        this.next = next;
    }
}

class Operasi_CircularDoublyLL {
    private Node_CircularDoublyLL awal;
    private Node_CircularDoublyLL akhir;
    private int size;

    public Operasi_CircularDoublyLL() {
        this.awal = null;
        this.akhir = null;
        this.size = 0;
    }

    public boolean isEmpty() {
        return this.awal == null;
    }

    public int getSize() {
        return this.size;
    }

    public void insert_awal(int x) {
        Node_CircularDoublyLL ptr = new Node_CircularDoublyLL(x, null, null);
        if (isEmpty()) { // blm ada data di list
            ptr.setNext(ptr);
            ptr.setPrev(ptr);
            awal = ptr;
            akhir = awal;
        } else {
            ptr.setPrev(akhir);
            akhir.setNext(ptr);
            awal.setPrev(ptr);
            ptr.setNext(awal);
            awal = ptr;
        }
        size++;
    }

    public void insert_akhir(int x) {
        Node_CircularDoublyLL ptr = new Node_CircularDoublyLL(x, null, null);
        if (isEmpty()) { // belum ada data
            ptr.setNext(ptr);
            ptr.setPrev(ptr);
            awal = ptr;
            akhir = awal;
        } else {
            ptr.setPrev(akhir);
            akhir.setNext(ptr);
            awal.setPrev(ptr);
            ptr.setNext(awal);
            akhir = ptr;
        }
        size++;
    }

    public void insert_posisi(int x, int posisi) {
        Node_CircularDoublyLL ptr = new Node_CircularDoublyLL(x, null, null);
        if (posisi == 1) {
            this.insert_awal(x);
        } else if (posisi == size + 1) {
            this.insert_akhir(x);
        } else {
            Node_CircularDoublyLL nPtr = awal;
            for (int i = 2; i <= size; i++) {
                if (i == posisi) {
                    Node_CircularDoublyLL temp = nPtr.getNext();
                    nPtr.setNext(ptr);
                    ptr.setPrev(nPtr);
                    ptr.setNext(temp);
                    temp.setPrev(ptr);
                }
                nPtr = nPtr.getNext();
            }
        }
        size++;
    }

    public void hapus_posisi(int posisi) {
        if (posisi == 1) {
            if (size == 1) {
                awal = null;
                akhir = null;
                size = 0;
            } else {
                awal = awal.getNext();
                awal.setPrev(akhir);
                akhir.setNext(awal);
                size--;
            }
        } else if (posisi == size) {
            akhir = akhir.getPrev();
            akhir.setNext(awal);
            awal.setPrev(akhir);
            size--;
        } else {
            Node_CircularDoublyLL ptr = awal.getNext();
            for (int i = 2; i <= size; i++) {
                if (i == posisi) {
                    Node_CircularDoublyLL a = ptr.getPrev();
                    Node_CircularDoublyLL b = ptr.getNext();
                    a.setNext(b);
                    b.setPrev(a);
                    size--;
                }
                ptr = ptr.getNext();
            }
        }
    }

    public void tampil_data() {
        if (isEmpty()) {
            System.out.println("Tidak ada data pada Linked List");
        } else if (awal.getNext() == awal) {
            System.out.println(awal.getData());
        } else {
            Node_CircularDoublyLL ptr = awal;
            System.out.print(awal.getData() + " <-> ");
            ptr = awal.getNext();
            while (ptr.getNext() != awal) {
                System.out.print(ptr.getData() + " <-> ");
                ptr = ptr.getNext();
            }
            System.out.print(ptr.getData() + " <-> ");
            ptr = ptr.getNext();
            System.out.println(ptr.getData());
        }
    }
}

public class CircularDoublyLinkedList_WilliamTanuwijaya {

    public static void main(String[] args) {
        System.out.println("Circular Doubly Linked List");
        Operasi_CircularDoublyLL obj = new Operasi_CircularDoublyLL();
        System.out.println("Method Insert Awal");
        obj.insert_awal(10);
        obj.insert_awal(20);
        obj.insert_awal(30);
        obj.tampil_data();

        System.out.println("\nMethod Insert Akhir");
        obj.insert_akhir(100);
        obj.tampil_data();

        System.out.println("\nMethod Insert Posisi");
        obj.insert_posisi(200, 5);
        obj.tampil_data();

        System.out.println("\nMethod Hapus Posisi");
        obj.hapus_posisi(3);
        obj.tampil_data();
    }

}