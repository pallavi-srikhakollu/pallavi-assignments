describe("hello",function(){
 var no=90;
it("check for return string of function " , function (){
expect(checkReturnString()).toEqual("This is return string");
});


it("check for return number of function " , function (){
expect(checkReturnString()).toEqual("This is no");
});

it("variable noyt defined " , function (){
expect(no).toBeDefined();
});
});
