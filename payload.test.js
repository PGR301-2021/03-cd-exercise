const payload = require("./payload");

test("Creates at least age correctly in payload", () => {
    expect(payload("glenn", "Bech", 44, "DevOps").age).toBe(44);
});