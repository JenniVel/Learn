export class Person{
  constructor(name){
    this.name = name;
  }

  SayHello(nama){
    console.info(`Hello ${nama}, my name is ${this.name}`);
  }
}