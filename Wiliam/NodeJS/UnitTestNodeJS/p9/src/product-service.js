import { getAllProducts, getProductById } from './database';

export class ProductService {
  static findById(id) {
    return getProductById(id);
  }

  static fingAll() {
    return getAllProducts();
  }
}
