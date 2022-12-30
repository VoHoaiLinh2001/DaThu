class Question1 {
  final int id, answer;
  final String question;
  final List<String> options;

  Question1(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List data1 = [
  {
    "id": 1,
    "question": "Bài hát Tiếng chuông và ngọn cờ được viết ở nhiệp mấy?",
    "options": ['2/4', '2/4', '4/4', '3/4'],
    "answer_index": 4,
  },
  {
    "id": 2,
    "question": "Giá trị trường độ lớn nhất của nhịp 4/4 là:",
    "options": ['Nốt trắng', 'Nốt trắng chấm', 'Nốt tròn', 'Nốt lá'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "Trong các bài hát sau, bài hát nào của nhạc sĩ Hoàng Việt?",
    "options": ['Tình ca', 'Quốc ca', 'Du kích ca', 'Dân ca'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Nhạc sĩ Hoàng Việt sinh và mất năm nào?",
    "options": [
      'Năm 1926 - 1965',
      'Năm 1927 - 1966',
      'Năm 1928 - 1967',
      'Năm 1924 - 1986'
    ],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "Bài hát Mái trường mếm yêu là của nhạc sĩ nào?",
    "options": ['Hoàng Lân', 'Lê Quốc Thắng', 'Lu Hữu Phước', 'Võ Hoài Linh'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "Khuôn nhạc gồm mấy dòng và mấy khe?",
    "options": [
      'Năm dòng bốn khe',
      'Ba dòng bốn khe',
      'Bốn dòng bốn khe',
      'Sáu dòng bốn khe'
    ],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Bài hát Đi cấy thuộc dân ca vùng, miền nào?",
    "options": [
      'Dân ca Nghệ An',
      'Dân ca Thanh Hóa',
      'Dân ca Hà Tĩnh',
      'Dân ca Cao Thắng'
    ],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "W.A Mozart (Mô da) đã sáng tác lúc ông bao nhiêu tuổi?",
    "options": ['Cin', 'Count', 'Cout', 'Outputy'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "Nhạc sĩ thiên tài Mozart là người nước nào?",
    "options": ['Nước Đức', 'Nước Áo (Viên)', 'Nước Tây Ban Nha', 'Nước Mỹ'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question":
        "Hình nốt trắng có dấu chấm trường độ của nó bằng bao nhiêu phách?",
    "options": ['Hai phách rưỡi', 'Ba phách', 'Bốn phách', 'Tám phách'],
    "answer_index": 2,
  }
];
