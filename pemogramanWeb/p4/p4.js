class Form{
    //Membuat konsturuktor dengan parameter name dan address
    constructor(name, address){
        //Lakukan OOP
      this.name = name ;
      this.address = address;

      //Menampilkan teks "Hello my name is ${this.name} and i live in ${address}" di konsol 
      //untuk S{this.name} = format 
      console.info(`Hello my name is ${this.name} and i live in ${address}`);
    }
  }
  
  const a = new Form('Ucok', 'PLG');
  console.info(a);