const sum = require("../src/sum");

test("perjumlahan", () =>{
    const result = sum(1, 2);

    expect(result).toBe(3);
}) 