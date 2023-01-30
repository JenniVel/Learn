interface Interable<T>{
  [Symbol.iterator](): Iterator<T>;
}