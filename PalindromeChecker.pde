public void setup(){
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) {
    if(palindrome(removeNonAlpha(lines[i]))==true){
      println(lines[i] + " IS a palidrome.");
    }
    else{
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word){
  int bob=0;
  int donut=word.length()-1;
  while(bob-donut<0){
    if(!word.substring(bob,bob+1).equals(word.substring(donut,donut+1))){
      return false;
    }
    bob++;
    donut--;
  }
  return true;
}
public String removeNonAlpha(String word){
  String newString=new String("");
  for(int i=0;i<word.length();i++){
    if(Character.isLetter(word.charAt(i))){
      newString+=word.substring(i,i+1);
   }
  }
  return newString.toLowerCase();
}


