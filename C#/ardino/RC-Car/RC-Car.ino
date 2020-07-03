#define FORWARD  1
#define BACKWARD  0
#define SPEED_75  192 // PWM값 192 (0~255), 75% 값
#define SPEED_0   0 // PWM값 0(LOW) (0~255), 0% 값
const int trig = 2;   // 거리센서 TRIG 입력핀(아두이노 출력핀)
const int echo = 3;   // 거리센서 ECHO 출력핀(아두이노 입력핀)
const int motor_a_pwm = 5;  // 모터 A PWM 입력핀(아두이노 출력핀)
const int motor_a_dir = 4;  // 모터 A 방향(아두이노 출력핀)
const int motor_b_pwm = 6;  // 모터 B PWM 입력핀(아두이노 출력핀)
const int motor_b_dir = 7;  // 모터 B 방향(아두이노 출력핀)

void forw()
{
  digitalWrite(motor_a_dir, FORWARD); analogWrite(motor_a_pwm, SPEED_75);
  digitalWrite(motor_b_dir, FORWARD); analogWrite(motor_b_pwm, SPEED_75);
}
void rotateR()
{
  digitalWrite(motor_a_dir, BACKWARD); analogWrite(motor_a_pwm, SPEED_75);
  digitalWrite(motor_b_dir, FORWARD); analogWrite(motor_b_pwm, SPEED_75);
}
void stop()
{
  digitalWrite(motor_a_dir, FORWARD); analogWrite(motor_a_pwm, SPEED_0);
  digitalWrite(motor_b_dir, FORWARD); analogWrite(motor_b_pwm, SPEED_0);
}
double calDistance()      // 장애물까지의 거리 계산
{
  long echoTimeUs;      // 초음파가 돌아오는데 걸린 시간 저장
  double distanceCm;      // 장애물까지의 계산된 거리 저장
  digitalWrite(trig, HIGH);   // 측정용 초음파 발생
  delayMicroseconds(10);
  digitalWrite(trig, LOW);
  echoTimeUs = pulseIn(echo, HIGH); // 초음파가 돌아올 때까지의 시간 계산
  distanceCm = echoTimeUs * 349.5 / 2;  // 장애물까지의 거리 계산, 거리 = 속도 x 시간
        // 초음파 속도는 349.5m/s(온도 30도로 계산시 ^^;. 실제 정확한 속도는 “331.5 + 0.6 x 온도”임;)이고 움직인 거리는 장애물까지 왔다갔다 왕복거리이므로 실제 장애물까지의 거리는 측정된 거리를 2로 더 나누어 주어야 함.
return(distanceCm);
}
void setup()
{
  pinMode(trig, OUTPUT);    // TRIG 신호, 아두이노는 출력, 거리센서는 입력
  pinMode(echo, INPUT);   // ECHO 신호, 아두이노는 출력, 거리센서는 입력
  pinMode(motor_a_pwm, OUTPUT); // 모터 제어핀은 아두이노 입장에서 모두 출력
  pinMode(motor_a_dir, OUTPUT);
  pinMode(motor_b_pwm, OUTPUT);
  pinMode(motor_b_dir, OUTPUT);
  digitalWrite(trig, LOW);    // TRIG 신호의 초기값은 LOW
}
void loop()
{
  double distance;
  forw();    // 전진 명령 처리
  while(1)
  {
    delay(10);  // 10ms마다 장애물 검사
    while ((distance = calDistance()) < 10.0)
    {
      stop(); rotateR();  delay(10);  stop();
    }
  }
}

