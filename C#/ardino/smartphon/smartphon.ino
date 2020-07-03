#define FORWARD  1
#define BACKWARD  0

#define SPEED_100  0xff
#define SPEED_80   0xC0
#define SPEED_50   0x80
#define SPEED_30   0x40
#define SPEED_0    0x00

#define  B_FORWARD_L   '1'
#define   B_FORWARD   '2'
#define B_FORWARD_R   '3'
#define   B_CCLOCKWISE    '4'
#define B_STOP      '5'
#define   B_CLOCKWISE   '6'
#define B_BACKWARD_L    '7'
#define B_BACKWARD    '8'
#define B_BACKWARD_R    '9'
void forw();
void forw_l(); 
void forw_r();
void back();
void back_l();
void back_r();
void clockwise();
void cclockwise();
void sstop();
int led = 13;
int motor_a_dir = 4;
int motor_a_pwm = 5;
int motor_b_dir = 7;
int motor_b_pwm = 6;

void setup() {
  Serial.begin(115200);
  pinMode(motor_a_dir, OUTPUT);
  pinMode(motor_a_pwm, OUTPUT);
  pinMode(motor_b_dir, OUTPUT);
  pinMode(motor_b_pwm, OUTPUT);
}

void loop() 
{ 
  char rx_data;  
  if (Serial.available() > 0)
  {
    rx_data = Serial.read();
    if (rx_data == B_FORWARD)          forw();
    else if (rx_data == B_FORWARD_L)   forw_l(); 
    else if (rx_data == B_FORWARD_R)   forw_r();
    else if (rx_data == B_BACKWARD)    back();
    else if (rx_data == B_BACKWARD_L)  back_l();
    else if (rx_data == B_BACKWARD_R)  back_r();
    else if (rx_data == B_CLOCKWISE)   clockwise();
    else if (rx_data == B_CCLOCKWISE)  cclockwise();
    else if (rx_data == B_STOP)        sstop();
    else  ;
  }
  delay(100);
}

void forw()
{
  digitalWrite(motor_a_dir, FORWARD); analogWrite(motor_a_pwm, SPEED_80);
  digitalWrite(motor_b_dir, FORWARD); analogWrite(motor_b_pwm, SPEED_80);
}
void forw_l()
{
  digitalWrite(motor_a_dir, FORWARD); analogWrite(motor_a_pwm, SPEED_50);
  digitalWrite(motor_b_dir, FORWARD); analogWrite(motor_b_pwm, SPEED_80);
}
void forw_r()
{
  digitalWrite(motor_a_dir, FORWARD); analogWrite(motor_a_pwm, SPEED_80);
  digitalWrite(motor_b_dir, FORWARD); analogWrite(motor_b_pwm, SPEED_50);
}
void back()
{
  digitalWrite(motor_a_dir, BACKWARD); analogWrite(motor_a_pwm, SPEED_80);
  digitalWrite(motor_b_dir, BACKWARD); analogWrite(motor_b_pwm, SPEED_80);
}
void back_l()
{
  digitalWrite(motor_a_dir, BACKWARD); analogWrite(motor_a_pwm, SPEED_50);
  digitalWrite(motor_b_dir, BACKWARD); analogWrite(motor_b_pwm, SPEED_80);
}
void back_r()
{
  digitalWrite(motor_a_dir, BACKWARD); analogWrite(motor_a_pwm, SPEED_80);
  digitalWrite(motor_b_dir, BACKWARD); analogWrite(motor_b_pwm, SPEED_50);
}
void clockwise()
{
  digitalWrite(motor_a_dir, BACKWARD); analogWrite(motor_a_pwm, SPEED_80);
  digitalWrite(motor_b_dir, FORWARD); analogWrite(motor_b_pwm, SPEED_80);
}
void cclockwise()
{
  digitalWrite(motor_a_dir, FORWARD); analogWrite(motor_a_pwm, SPEED_80);
  digitalWrite(motor_b_dir, BACKWARD); analogWrite(motor_b_pwm, SPEED_80);
}
void sstop()
{
  digitalWrite(motor_a_dir, FORWARD); analogWrite(motor_a_pwm, SPEED_0);
  digitalWrite(motor_b_dir, FORWARD); analogWrite(motor_b_pwm, SPEED_0);
}

