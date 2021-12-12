import processing.sound.*;

ArrayList<SinOsc> Note = new ArrayList<SinOsc>();
boolean[] NoteBool;

float C1 = 261.6;
int octave = 3;
class Key{
  public
    
  Key(int x, int y, int z, int v, int o)
  {    
    int note = o;
    
    X1 = x;
    Y1 = y;
    W = z;
    H = v;
    
    State = false;//Key not being played

    Offset = o;
    
    while(note>=12)note-=12;
    if( (note==1)||(note==3)||(note==6)||(note==8)||(note==10) ) colour = false;//Black Keys
    else colour = true;//White Keys
    
    
    son = InitNote(o);//Setting initial sound settings
    wrp = InitWrap();
    reverb = InitReverb();
        
    
    Draw();//Draws notes
  }
  
  void Draw()
  {
    if(colour)
    {
      //For White Notes
      if(State)fill(128);//If note is played it is dulled
      else fill(255);//Otherwise note is white
      stroke(128);
      strokeWeight(4);
      rect(X1, Y1, W, H, 8);//Draws White Notes
    }
    else
    {
      
      if(State)fill(100);//If note is played it is greyed
      else fill(0);//Otherwise note is black
      stroke(100);
      strokeWeight(4);
      rect(X1, Y1, W, H, 8);//Draws black notes
    }
  }
  
  void Play() {
    State |= true;
    son.play();
    reverb.process(son);//Begins note sounds
    
  }
  
  void Stop()
  {
    son.stop();
    State &= false;//Stops note sounds
  }
  
  boolean Color()
  {
    return colour;//Gives note colours
  }
  
  protected//Keeps these values for all of 'key'
  int X1, Y1, W, H;
  int Offset;//Sets initialoctaves
  
  boolean colour;
  boolean State;
  
  SinOsc son;
  Env wrp;
  Reverb reverb;
}

SinOsc InitNote(int offset)
{
  SinOsc sin = new SinOsc(this);
  
  sin.stop();
  sin.freq(C1*pow(2,(float)offset/12));
  sin.amp(1);
  sin.add(0);
  sin.pan(0);
  
  return sin;
}

Env InitWrap()
{
  Env wrp = new Env(this);
  return wrp;
}

Reverb InitReverb()
{
  float revOne=0.2;
  float revTwo=0.3;
  float revThree=0.3;
  
  Reverb reverb = new Reverb(this);
  
  reverb.set(revOne, revTwo, revThree);
  
  return reverb;
}

class Piano{
  public
  Piano(int x1, int y1, int w, int h)
  {
    X1 = x1;
    Y1 = y1;
    W = w;
    H = h;
    
    int dx = W/octave;//Sets octave length
    int dy = H;//The keyboard hastwo octaves
    
    for(int i=0; i<(octave); i++)
    {
      
      key.add(new Key(X1+(dx*i),Y1,dx/7,dy,0+(12*i)));//C
      key.add(new Key(X1+(dx*i)+((2*dx)/(7*3)),Y1,((2*dx)/(3*7)),(dy*3)/5,1+(12*i)));//C#
      key.add(new Key(X1+(dx*i)+(dx/7),Y1,dx/7,dy,2+(12*i)));//D
      key.add(new Key(X1+(dx*i)+((5*dx)/(7*3)),Y1,((2*dx)/(3*7)),(dy*3)/5,3+(12*i)));//D#
      key.add(new Key(X1+(dx*i)+(2*dx/7),Y1,dx/7,dy,4+(12*i)));//E
      key.add(new Key(X1+(dx*i)+(3*dx/7),Y1,dx/7,dy,5+(12*i)));//F
      key.add(new Key(X1+(dx*i)+((11*dx)/(7*3)),Y1,((2*dx)/(3*7)),(dy*3)/5,6+(12*i)));//F#
      key.add(new Key(X1+(dx*i)+(4*dx/7),Y1,dx/7,dy,7+(12*i)));//G
      key.add(new Key(X1+(dx*i)+((14*dx)/(7*3)),Y1,((2*dx)/(3*7)),(dy*3)/5,8+(12*i)));//G#
      key.add(new Key(X1+(dx*i)+(5*dx/7),Y1,dx/7,dy,9+(12*i)));//A
      key.add(new Key(X1+(dx*i)+((17*dx)/(7*3)),Y1,((2*dx)/(3*7)),(dy*3)/5,10+(12*i)));//A#
      key.add(new Key(X1+(dx*i)+(6*dx/7),Y1,dx/7,dy,11+(12*i)));//B
      //B# would be C
    }
  }
  
  void Draw()
  {
    for(int i=0; i<(octave);i++)
    {
      //White keys
      key.get(0+(12*i)).Draw();
      key.get(2+(12*i)).Draw();
      key.get(4+(12*i)).Draw();
      key.get(5+(12*i)).Draw();
      key.get(7+(12*i)).Draw();
      key.get(9+(12*i)).Draw();
      key.get(11+(12*i)).Draw();
      
      //Black keys
      key.get(1+(12*i)).Draw();
      key.get(3+(12*i)).Draw();
      key.get(6+(12*i)).Draw();
      key.get(8+(12*i)).Draw();
      key.get(10+(12*i)).Draw();
    }
  }
  
  void Play(int offset)
  {
    if(offset<key.size()) key.get(offset).Play();
  }
  
  void Stop(int offset)
  {
    if(offset<key.size()) key.get(offset).Stop();
  }
  
  protected//Keeps values for class
  int Keys;//Number of active keys
  int X1, Y1;
  int W, H;
  ArrayList<Key> key = new ArrayList<Key>();//Different noteskey
}

void InitNotes()
{
  NoteBool = new boolean[octave*12];
  
  
  for(int i=0; i<octave*12; i++)
  {
    NoteBool[i] &= false;
    Note.add(new SinOsc(this));
    Note.get(i).stop();
    Note.get(i).freq(440*pow(2,(float)i/12));
    Note.get(i).amp(1);
  }
}
