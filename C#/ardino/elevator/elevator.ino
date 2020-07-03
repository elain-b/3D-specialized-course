#define FND_A 2
#define FND_SEL3 13
void setup() {
  // put your setup code here, to run once:
int i;
for(i=FND_A; i<=FND_SEL3; i++)
pinMode(i, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
boolean digit[10][12] = {
/*{1, 1, 1, 1, 1, 1 ,0 , 0, 0, 1, 1, 1},//0*/
{ 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1},
{ 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1},
{ 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1},
{ 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0},
/*{ 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1},
{ 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1},
{ 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1},
{ 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1},
{ 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1}*/
};
int i, j;

for (j=0; j<=4; j++)
{
  for(i=FND_A; i<=FND_SEL3; i++)
  {
    digitalWrite(i, digit[j][i-2]);
  }
  delay(500);
}
}

