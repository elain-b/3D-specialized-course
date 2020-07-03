#include "pitches.h"
#define PIEZO 5

// 음계
/*int song[ ] = {  NOTE_C5, NOTE_E5, NOTE_D5, NOTE_C5, NOTE_G4, 0, // 솔미레도솔
    NOTE_G4, NOTE_E5, NOTE_D5, NOTE_C5, NOTE_A4, 0, // 솔미레도라
    NOTE_A4, NOTE_F5, NOTE_E5, NOTE_D5, NOTE_B4, 0, // 라파미레시
    NOTE_G5, NOTE_G5, NOTE_F5, NOTE_D5, NOTE_E5, NOTE_C5, 0 }; // 솔솔파레미도*/

int song[ ] = {  NOTE_C5, NOTE_A4, NOTE_F4,0, NOTE_C5,NOTE_B4,NOTE_G4, 0, // 도라파08도시솔04
                 NOTE_C5, NOTE_A4, NOTE_F4,0, NOTE_C5,NOTE_B4,NOTE_G4, 0,// 도라파08도시솔04
                 0,
                 0,NOTE_F4, NOTE_E4, NOTE_F4, NOTE_C4, //0파미파도
                 0,NOTE_F4, NOTE_E4, NOTE_F4, NOTE_A5,//0파미파라
                 NOTE_B4, NOTE_A4, NOTE_G4,0, NOTE_F4, NOTE_B4, //시라솔파시
                 NOTE_A5, NOTE_G5, NOTE_F4, //라솔파
                 NOTE_F5, NOTE_G4, NOTE_G4 }; //파솔솔
    
// 연주시간   
int time[ ] = { 500, 250, 250, 250, 500, 500,250,500,
                500, 250, 250, 250, 500, 500,250,500,
                2000,
                500,500, 500, 250, 2250, 
                500,500, 500, 250, 2250,
                500,500,500,250,750,
                500,500,500,
                750,250,3000};
void setup()  // 노래는 한 번만 들으면 되므로 setup() 에서 처리, 다시 들으려면 RESET 버튼 누름
{
  int i;
  pinMode(PIEZO, OUTPUT); // PIEZO 버저핀은 출력
 // delay(3000);    // 카드를 열고 3초후에 연주 시작
  for (i=0; i<40; i++)
  {
    tone(PIEZO, song[i], time[i]);  // 배열순으로 노래 재생
    delay(time[i]);
  }
}

void loop()
{
  /*int i;
  pinMode(PIEZO, OUTPUT); // PIEZO 버저핀은 출력
  delay(3000);    // 카드를 열고 3초후에 연주 시작
  for (i=0; i<25; i++)
  {
    tone(PIEZO, song[i], time[i]);  // 배열순으로 노래 재생
    delay(time[i]);
  }*/
} 

