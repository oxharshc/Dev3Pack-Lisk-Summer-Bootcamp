# Dev3Pack-Lisk-Summer-Bootcamp
Week 1 Lecture 2 - Solidity Fundamentals

## Hey there! 👋 Welcome to our User Registration Smart Contract

This is a super simple smart contract that lets people register and manage their profiles on the blockchain. Think of it as a basic sign-up system, but decentralized!

### What does this contract do?

Our `dev3pack` contract is like a digital guestbook where:

- **New folks can sign up** with their name, age, and email
- **Already registered? No problem!** You can update your info anytime
- **Want to check your profile?** Just ask and the contract will show you

### The Technical Stuff (but keeping it simple!)

**Contract Name**: `dev3pack`  
**Solidity Version**: 0.8.30  
**License**: MIT (free to use!)

### How we store your info

We keep your data in a neat little package called a `User`:
```solidity
struct User {
    string name;        // Your name
    uint age;          // Your age
    string email;      // Your email
    uint registrationTime;  // When you joined us
    bool exists;       // A flag to know you're registered
}
```

### What can you do with this contract?

#### 1. Sign Up! 🎉
```solidity
register("Your Name", 25, "you@email.com")
```
Just call this function with your details and boom - you're in! Don't worry about registering twice, the contract won't let you.

#### 2. Update Your Info 📝
```solidity
updateProfile("New Name", 26, "newemail@email.com")
```
Changed your email? Got older? No worries, just update your profile!

#### 3. Check Your Profile 👀
```solidity
getProfile()
```
This shows you all your stored info including when you first registered.

### A Quick Example

Let's say Alice wants to join:
```solidity
// Alice signs up
register("Alice", 30, "alice@wonderland.com");

// Later, Alice gets married and changes her name
updateProfile("Alice Cooper", 30, "alice.cooper@wonderland.com");

// Alice checks her profile
(string memory name, uint age, string memory email, uint time) = getProfile();
// Returns: "Alice Cooper", 30, "alice.cooper@wonderland.com", [timestamp]
```

### Why is this contract cool?

- **No duplicates**: You can't accidentally register twice
- **Your data, your control**: Only you can update your own profile
- **Simple and efficient**: No fancy stuff, just what you need
- **Transparent**: Everything is on the blockchain for everyone to verify

### Want to use this contract?

1. Make sure you have Solidity 0.8.30
2. Deploy it to any EVM-compatible blockchain
3. Start registering users!

That's it! Simple, clean, and ready to go. Happy coding! 🚀

### License

This project is open source under the MIT License - feel free to use it however you like!
