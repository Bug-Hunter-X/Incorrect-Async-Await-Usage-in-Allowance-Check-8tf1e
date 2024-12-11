async function checkAllowance(token, spender, amount) {
  const allowance = await token.allowance(msg.sender, spender);
  if (allowance.lt(amount)) {
    throw new Error('Insufficient allowance');
  }
}