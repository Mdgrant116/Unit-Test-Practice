# **Unit Test Notes**


## **Why Test?**

Testing allows us to to make changes and refactor more boldly, and increases our productivity even with the small overhead of writing the tests.

• Good tests mean we can refactor the code, and change them to be more efficient and more maintainable, because our tests should continue to pass throughout the process.

• Good tests mean bugs we’ve fixed in the past stay fixed, that we don’t accidentally create bugs along the way. 

• Good tests are also good documentation, or at least part of it.

Each test your write is a direct assertion that you expect the code to have a specific output when its given specific input. It is the perfect example of how a piece of code should work when its ran.

Testing doesn’t however uncover new bugs, it just makes sure the code we’ve written works as expected. It provides quality assurance, not quality insertion.

You write them side by side, so its easy to keep them both in your head while you’re working.

This has two different side effects, first you find bugs and fix them right away, while you’re still writing the tests. The second side effect of ted is that if forces you to break up long tasks into a series of small, testable chunks.


## Tips

Its easy to overuse XCTAssertTrue for everything. For example look at these lines of code.

    XCTAssertTrue(2 == 3)
    XCTAsserEqual(2, 3)

While these are both valid, keep in mind that good tests act as overall documentation, so if you can express your intent more clearly its best to just do it more clearly.

Those two lines of code also give different fail messages when they fail. 

The first one will say “XCTAssertTrueFailed”

While the second one will say “XCTAssertEqualFailed: (2) is not equal to (3). 

One of those messages is clearly more useful than the other. You should always look to use the most precise assertions XCTests offer.

You can also add custom messages when tests fail, this is highly recommended, because its best to clarify what you expected the outcome to be when the test failed!

Another thing to take note of is the structure of your tests.

    func testHaterHatesAfterABadDay() {
        
        var hater = Hater()
        
        hater.hadABadDay()
        
        XCTAssertTrue(hater.hating)

    }


The way this is arranged isn’t by accident. One of the best test practices you can adopt is Arrange, Act, and Assert.

1. You’re putting things into place ready for the test.
2. You’re executing the code you want to test.
3. You’re evaluating the results of the test.

Its also known as Given, When, Then.

func testHaterHappyAfterGoodDay() {

    // Given
    var hater = Hater()

    // When
    hater.hadAGoodDay()

    // Then
    XCTAssertFalse(hater.hating)

}

Although this is a style issue that you’ll need to decide for yourself, at least keeping the structure of arrange, act, and assert is a good idea.
