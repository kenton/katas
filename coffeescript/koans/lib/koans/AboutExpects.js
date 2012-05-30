(function() {

  describe('About Expects', function() {
    it('should expect true', function() {
      return expect(true).toBeTruthy();
    });
    it('should have filled in values', function() {
      return expect(2).toEqual(1 + 1);
    });
    it('should understand type coercion is fixed', function() {
      expect(0 === "0").toBeFalsy();
      return expect(1).toBeTruthy();
    });
    it('should expect equality', function() {
      var actualValue, expectedValue;
      expectedValue = 2;
      actualValue = 1 + 1;
      return expect(expectedValue === actualValue).toBeTruthy();
    });
    return it('should assert equality a better way', function() {
      var actualValue, expectedValue;
      expectedValue = 2;
      actualValue = 1 + 1;
      return expect(actualValue).toEqual(expectedValue);
    });
  });

}).call(this);
