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
  String temp ="";
  word = word.toLowerCase();
  for(int i =0; i<word.length();i++){
    if (word.charAt(i)!=' '){
      temp = temp + word.substring(i,i+1);
    }
  }
  word = temp;
  temp = "";
  for (int i = 0; i <word.length(); i ++){
    if (Character.isLetter(word.charAt(i))==true){
    temp+=word.substring(i,i+1);
    }
  }
  word = temp;
  if(word.equals(reverse(word))){
  return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
  for(int i = str.length()-1;i>=0;i--){
    sNew +=str.substring(i,i+1);
  }
  String temp ="";
  sNew = sNew.toLowerCase();
  for(int i =0; i<sNew.length();i++){
    if (sNew.charAt(i)!=' '){
      temp = temp + sNew.substring(i,i+1);
    }
  }
  sNew = temp;
  temp = "";
  for (int i = 0; i <sNew.length(); i ++){
    if (Character.isLetter(sNew.charAt(i))==true){
    temp+=sNew.substring(i,i+1);
    }
  }
  sNew = temp;
    return sNew;
}


