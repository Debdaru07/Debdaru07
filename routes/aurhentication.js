function generateToken(param1, param2) {
    // Combine the input parameters to create a unique string
    const combinedString = `${param1}${param2}`;
  
    // Use a hashing function (e.g., MD5) to create a hash of the combined string
    const hash = md5(combinedString);
  
    // Take the first 16 characters of the hash to form the token
    const token = hash.substring(0, 16);
  
    return token;
  }
  
  // Example usage:
  const userId = "Debdaru";
  const phoneNumber = "8787588495";
  const token = generateToken(userId, phoneNumber);
  console.log(token);
  