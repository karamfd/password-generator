while true {
  print("Password (8 to 32 characters): ", terminator: "")
  
  guard let input = readLine(), let passwordLength = Int(input) else {
    print("Invalid input. Please enter a number.")
    continue
  }
  
  if passwordLength < 8 || passwordLength > 32 {
    print("Error: password must be between 8 and 32 characters")
  } else {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
      let digits = "0123456789"
      let punctuation = "!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~"
      let characters = letters + digits + punctuation
      
      let password = String((0..<passwordLength).map { _ in
        characters.randomElement()!
      })
      
      print("Random password: \(password)")
      break
  }
}
