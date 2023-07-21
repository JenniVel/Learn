import { getAllProducts, getProductById } from '../src/database';
import { ProductService } from '../src/product-service';

jest.mock('../src/database.js');

test('mock modules getProductById', () => {
  getProductById.mockImplementation((id) => {
    return {
      id: id,
      name: 'Product Mock',
    };
  });

  const product = ProductService.findById(1);
  expect(product).toEqual({
    id: 1,
    name: 'Product Mock',
  });
});

test('mock modules getAllProducts', () => {
  const products = [
    {
      id: 1,
      name: 'Velen',
    },
    {
      id: 2,
      name: 'Will',
    },
  ];
  getAllProducts.mockReturnValue(products);

  expect(ProductService.fingAll()).toEqual(products);
});
