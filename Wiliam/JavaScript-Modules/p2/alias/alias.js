const company = "Jennifer Velensia Santoti";

function sum(first, second) {
  return first + second;    
}

class Company{
  constructor(name){
    console.info(`Halo ${name}`)
  }
}

export {company as perusahaan, sum as total, Company as Perusahaan};