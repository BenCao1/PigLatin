public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord) {
  for (int i = 0; i < sWord.length(); i++) {
    if (sWord.substring(i, i+ 1).equals("a") || sWord.substring(i, i+ 1).equals("e") || sWord.substring(i, i+ 1).equals("i") || sWord.substring(i, i+ 1).equals("o") || sWord.substring(i, i+ 1).equals("u")) {
      return i;
    }
  }
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{

  if (findFirstVowel(sWord) == -1) {
    return sWord + "ay";
  } 
  if (findFirstVowel(sWord) == 0) {
     return sWord + "way"; 
  }  
  if (sWord.substring(0, 2).equals("qu")) {
    return sWord.substring(2) + "quay";
  }  
  
  int count = 0;
  for (int i = 0; i < sWord.length() - 2; i++) {
    if (!sWord.substring(i,i + 1).equals("a") && !sWord.substring(i, i + 1).equals("e") && !sWord.substring(i, i + 1).equals("i") && !sWord.substring(i, i + 1).equals("o") && !sWord.substring(i, i + 1).equals("u")) {
        count++;
       if (sWord.substring(i + 1,i + 2).equals("a") || sWord.substring(i + 1, i + 2).equals("e") || sWord.substring(i + 1, i + 2).equals("i") || sWord.substring(i + 1, i + 2).equals("o") || sWord.substring(i + 1, i + 2).equals("u")) {
         break;
       }
    }
  }
  return sWord.substring(count) + sWord.substring(0, count) + "ay";
  

}
