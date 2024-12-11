function checkAllowance(token, spender, amount) {
  return token.allowance(msg.sender, spender).then(allowance => {
    if (allowance.lt(amount)) {
      throw new Error('Insufficient allowance');
    }
  });
}