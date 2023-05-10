package stack;

public class Stack_WilliamTanuwijaya {
	private int[] data;
	private int top_stack;
	private int size;
	private int banyak_data;

	public Stack_WilliamTanuwijaya(int size) {
		this.size = size;
		banyak_data = 0;
		data = new int[size];
		top_stack = -1;
	}

	public boolean isEmpty() {
		return top_stack == -1;
	}

	public boolean isFull() {
		return top_stack == size - 1;
	}

	public int getBanyakData() {
		return banyak_data;
	}

	public int peek() {
		if (isEmpty()) {
			System.out.println("Stack kosong");
		}
		return this.data[top_stack];

	}

	public void push(int x) {
		if (isFull()) {
			System.out.println("Stack Penuh");
		} else if (top_stack < size - 1) {
			this.data[++top_stack] = x;
		}
		banyak_data++;
	}

	public int pop() {
		if (isEmpty()) {
			System.out.println("Stack Kosong");
		}
		banyak_data--;

		return data[top_stack--];
	}

	public void tampilData() {
		if (isEmpty()) {
			System.out.println("Stack kosong");
		} else {
			System.out.println("---Data Stack---");
			for (int i = top_stack; i >= 0; i--) {
				System.out.println(data[i]);
			}
		}
	}

	public static void main(String[] args) {

		Stack_ChristoferEvanSetiawan s = new Stack_ChristoferEvanSetiawan(10);
		s.push(1);
		s.push(2);
		s.push(-2);
		System.out.println("Eleemn Teratas =" + s.peek());
		s.tampilData();
		System.out.println("Elemen yang dipop =" + s.pop());
		s.tampilData();
	}

}