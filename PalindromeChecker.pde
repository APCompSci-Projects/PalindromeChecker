public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  //your code here
  String word2 = onlyLetters(word);
  word2 = word2.toLowerCase();
  if (word2.equals(reverse(word2)))
  {
    return true;
  }
  else
  {
    return false;
  }
}

public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for (int i = str.length(); i > 0; i--)
    {
      sNew = sNew + str.substring(i - 1 , i);
    }
    return sNew;
}

public String onlyLetters(String sString){
  String answer = "";
  for (int i = 0; i < sString.length(); i++)
  {
    if(Character.isLetter(sString.charAt(i)))
    {
      answer = answer + sString.substring(i , i + 1);
    }
  }
  return answer;
}


