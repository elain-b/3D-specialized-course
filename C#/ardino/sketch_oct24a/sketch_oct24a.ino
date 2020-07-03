
#define SPEED_75          192      // PWM값 192(0~255), 75% 값
#define SPEED_0            0         // PWM값0(LOW) (0~255), 0% 값

 

const int trig = 2;                     // 거리센서Trig 입력핀(아두이노 출력핀)
const int echo = 3;                    // 거리센서Echo 출력핀(아두이노 입력핀)

const int pwma = 5;                  // 모터 APWM 입력핀(아두이노 출력핀)
const int ain1 = 4;                    // 모터 AIN1 입력4핀(아두이노 출력핀)
          
const int pwmb = 6;                 // 모터 BPWM 입력핀(아두이노 출력핀)
const int bin1 = 7;                  // 모터 BIN1 입력핀(아두이노 출력핀)
 

void forw()        // 전진 처리,모터 A = 전진, 모터 B = 전진

{

digitalWrite(ain1, LOW);      analogWrite(pwma, SPEED_75);
digitalWrite(bin1, LOW);      analogWrite(pwmb, SPEED_75);

}


void stop()        // 정지 처리,모터 A = 정지, 모터 B = 정지
{

analogWrite(pwma, SPEED_0);
analogWrite(pwmb, SPEED_0);

}

 

void rotateR()     // 오른쪽 회전 처리, 모터 A = 후진, 모터B = 전진
{

digitalWrite(ain1, LOW);      analogWrite(pwma, SPEED_75);
digitalWrite(bin1, HIGH);     analogWrite(pwmb, SPEED_75);

}

double calDistance()                                       //장애물까지의 거리 계산
{

long echoTimeUs;                                //초음파가 돌아오는데 걸린 시간 저장
double distanceCm;                             //장애물까지의 계산된 거리 저장

 digitalWrite(trig, HIGH);                         //측정용 초음파 발생
delayMicroseconds(10);
digitalWrite(trig, LOW);

echoTimeUs = pulseIn(echo, HIGH);          // 초음파가 돌아올 때까지의 시간 계산

distanceCm = echoTimeUs * 349.5 / 10000 / 2;       // 장애물까지의 거리 계산, 거리 = 속도 x 시간

                                                     //초음파 속도는 349.5m/s(요즘 여름 온도인 30도로 계산시 값임 ^^;. 실제 정확한 속도는 “331.5 + 0.6 x 온도”임;)이고, 10000으로 나눈 것은 단위를 맞추기 위한 것이며(1 sec =1000000 us, 1 m = 100 cm) 움직인 거리는 장애물까지 왔다갔다 왕복거리이므로 실제 장애물까지의 거리는 측정된 거리를 2로 더 나누어 주어야 함.

 
return(distanceCm);

}

void setup()
{

           pinMode(trig, OUTPUT);              // TRIG 신호, 아두이노는출력, 거리센서는 입력
           pinMode(echo, INPUT);               // ECHO 신호, 아두이노는입력, 거리센서는 출력

           pinMode(pwma, OUTPUT);           //모터 제어핀은 아두이노 입장에서 모두 출력
           pinMode(ain1, OUTPUT);
           
           pinMode(pwmb, OUTPUT);                     
           pinMode(bin1, OUTPUT);
 
          digitalWrite(trig, LOW);               //TRIG 신호의 초기값은 LOW

}

 void loop()
{

           double distance;

while(1)

{

distance = calDistance();

if (distance < 10.0)
{

                      rotateR();
                      delay(100);
                      stop();

}
else
          break;
}

forw();              //전진 명령 처리

}


