# music_app

Music share &amp; donation app

## Prototype of this app
- Version 1 : https://youngbaekim24850.invisionapp.com/public/prototype/sk5xuymca00c3au0153z6wcrn
- Version 2 : https://123046.invisionapp.com/overview/musicsample-ck5sdxax60jyn016oy3rgcypv/screens?v=JQEu0BWMIgEFAkPFnWSm0g%3D%3D&linkshare=urlcopied

## Project plan
- 1주차 : ~ 2월 12일 까지 / 인트로+메인 위(경수), 구글 계정 로그인 화면+메인 아래(영배)
- 2주차 : 

## Development rule
- Naming

기본적으로 카멜 케이스 방식
1) 첫 번째 단어는 모두 소문자
2) 두 번째 단어부터는 시작 글자만 대문자
ex) say + hello => sayHello

1. 변수명 : 명사형, double radius = 0.0
2. 상수명 : 모두 대문자
   한 글자 일때는 => const double PI = 3.141592,
   여러 글자 일때는 _ 로 구분 => const int MAX_INT = 2147483647
3. 디렉토리 이름 : 명사형, database_information
   * 디렉토리 이름은 2의 규칙을 따름, 예외 : 모두 소문자
=> 설명 지향 (어떤 값을 가지는지 구분)

4. 함수명 : 동사형, double findCircumference(double radius) { return 2*PI*radius; }
   * 매개 변수는 1,2의 규칙을 따름
   * 함수 스타일 : 
ex) {} 무조건
if sum() {
}

5. 파일 이름 : 동사형, getCustomerInfoFromDatabase.java
=> 목적 지향 (어떤 값을 리턴, 어떤 목적을 위해 만들어진 파일인지 구분)

## More+
- 메인 -> 후원 아이콘 변경
- 내정보 -> repost 만들기
- 음악정보 -> 소식 => 아티스트 끼리 조인

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
