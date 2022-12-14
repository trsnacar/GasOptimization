const GasOptimization = artifacts.require("GasOptimization");

contract("GasOptimization", accounts => {
  let gasOptimization;

  beforeEach(async () => {
    gasOptimization = await GasOptimization.new();
  });

  it("should sum up the even numbers that are less than 99", async () => {
    await gasOptimization.sumIfEvenAndLessThan99([1, 2, 3, 4, 5, 100]);
    const total = await gasOptimization.total();
    assert.equal(total, 6);
  });
});
