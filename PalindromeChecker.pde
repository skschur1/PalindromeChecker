public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String cWord = onlyLetters(word);
  String newWord = new String(reverse(cWord));
  if (cWord.equalsIgnoreCase(newWord))
    return true;
  return false;
}
public String reverse(String sWord)
{
  String newWord = new String();
  for (int i = sWord.length(); i > 0; i--)
  {
    newWord = newWord + sWord.substring(i-1, i);
  }
  return newWord;
}
public String onlyLetters(String sWord)
{
  String newWord = new String();
  for (int i = 0; i < sWord.length(); i++)
  {
    if (Character.isLetter(sWord.charAt(i)))
      newWord = newWord + sWord.substring(i, i+1);
  }
  return newWord;
}

