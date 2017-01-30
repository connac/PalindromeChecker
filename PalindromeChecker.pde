public void setup()
{

  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");

  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{ 
  String count =  new String();
  for(int i =0; i<word.length(); i++)
  
  if(Character.isLetter(word.charAt(i)) == true)
  count = count+word.charAt(i);
  
  
  if(count.equalsIgnoreCase(reverse(word)))
    return true;
    return false;
}
public String reverse(String str)
{

  String o = new String();
  for(int i = str.length()-1; i>=0; i--)
    if(Character.isLetter(str.charAt(i)) == true)
  o = o+str.charAt(i); 
  return o;

}