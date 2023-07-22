import { UserRepository } from '../src/user-repository';
import { UserService } from '../src/user-service';

jest.mock('../src/user-repository.js');

const repository = new UserRepository();
const service = new UserService(repository);

test('test mock class save', () => {
  const user = {
    id: 1,
    name: 'Velen',
  };
  service.save(user);
  expect(repository.save).toHaveBeenCalled();
});

test('test mock class findById', () => {
  const user = {
    id: 1,
    name: 'Velen',
  };
  repository.findById.mockReturnValueOnce(user);
  expect(service.findById(1)).toEqual(user);
  expect(repository.findById).toHaveBeenCalled();
});

test('test mock class findAll', () =>{
  const users = [
    {
      id: 1,
      name: 'Velen',
    },
    {
      id: 2,
      name: 'Will',
    }
  ];

  repository.findAll.mockReturnValueOnce(users);
  expect(service.findAll()).toEqual(users);
  expect(repository.findAll).toHaveBeenCalled();
})