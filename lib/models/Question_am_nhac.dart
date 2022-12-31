class Question_Am_Nhac {
  final int id, answer;
  final String question;
  final List<String> options;

  Question_Am_Nhac(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List question_am_nhac = [
  {
    "id": 1,
    "question": "Bài hát Lý cây đa thuộc dân ca vùng nào?",
    "options": [
      'Dân ca Quảng Nam',
      'Dân ca Thừa Thiên Huế',
      'Dân ca Quan họ Bắc Ninh',
      'Dân ca Quan họ Cà Mau'
    ],
    "answer_index": 3,
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
  },
  /* {
    "id": 11,
    "question":
        "Trong điệp khúc bài hát Anh cứ đi đi, em đã đuổi anh đi bao nhiêu lần?",
    "options": ['2 lần', '3 lần', '4 lần', '5 lần'],
    "answer_index": 1,
  },
  {
    "id": 12,
    "question":
        "Trong bài Rước đèn tháng 9 có bao nhiêu loại lồng đèn trong lời bài hát?",
    "options": ['7 loại', '8 loại', '9 loại', '6 loại'],
    "answer_index": 2,
  },
  {
    "id": 13,
    "question": "Nốt tròn bằng bao nhiêu nốt đen?",
    "options": ['2 nốt đen', '12 nốt móc kép', '4 nốt đen', '16 nốt móc kép'],
    "answer_index": 3,
  },
  {
    "id": 14,
    "question": "Bài hát Quốc Ca do nhạc sĩ nào sáng tác?",
    "options": ['Phong Nhã', 'Văn Cao', 'Lưu Hữu Phước', 'Phan Huỳnh Điểu'],
    "answer_index": 2,
  },
  {
    "id": 15,
    "question": "Bài hát Tiếng chuông và ngọn cờ là sáng tác của ai?",
    "options": ['Phạm Tuyên', 'Văn Cao', 'Lưu Hữu Phước', 'Võ Hoài Linh'],
    "answer_index": 1,
  },
  {
    "id": 16,
    "question": "Bài hát Tiếng chuông và ngọn cờ được viết ở nhiệp mấy?",
    "options": ['2/4', '2/4', '4/4', '3/4'],
    "answer_index": 4,
  },
  {
    "id": 17,
    "question": "Âm thanh có mấy thuộc tính?",
    "options": ['8', '2', '6', '4'],
    "answer_index": 4,
  },
  {
    "id": 18,
    "question": "Nốt son nằm ở vị trí nào trên khuông nhạc?",
    "options": [
      'Dong 2 từ dưới lên',
      'Dòng 2 từ trên xuống',
      'Khe 2 từ dưới lên',
      'Khe 2 từ trên xuống'
    ],
    "answer_index": 1,
  },
  {
    "id": 19,
    "question": "Một nốt tròn bằng mấy nốt móc kép?",
    "options": ['2', '4', '8', '16'],
    "answer_index": 4,
  },
  {
    "id": 20,
    "question":
        "Điền từ còn thiếu vào chỗ trống: Hình nốt là kí hiệu ghi______của âm thanh",
    "options": [
      'Sự ngừng nghỉ của âm thanh',
      'Sự cao thấp của âm thanh',
      'Dộ ngân dài ngắn của âm thanh',
      'Không có ý nào đúng'
    ],
    "answer_index": 3,
  },
  {
    "id": 21,
    "question": "Bài hát Vui bước trên đường xa do ai đặt lời?",
    "options": ['Mộng lân', 'Hoàng Long', 'Hoàng Lân', 'Võ Hoài Linh'],
    "answer_index": 3,
  },
  {
    "id": 22,
    "question": "Bài hát Vui bước trên đường xa thuộc dân ca gì?",
    "options": ['Nam bộ', 'Bắc bộ', 'Trung bộ', 'Nam Trung bộ'],
    "answer_index": 1,
  },
  {
    "id": 23,
    "question": "Nhạc sĩ Văn Cao không sáng tác bài hát nào sau đây?",
    "options": ['Ngày mùa', 'Quốc ca', 'Tiến về Hà Nội', 'Lên đàng'],
    "answer_index": 4,
  },
  {
    "id": 24,
    "question": "Bài TĐN số 2 chia làm mấy câu?",
    "options": ['2 câu', '3 câu', '4 câu', '5 câu'],
    "answer_index": 3,
  },
  {
    "id": 25,
    "question": "Nhạc cụ nào không phải là nhạc cụ dân tộc?",
    "options": ['Đàn đáy', 'Đàn nhị', 'Đàn ghi ta', 'Trống'],
    "answer_index": 3,
  },
  {
    "id": 26,
    "question": "Bài hát Hành khúc tới trường do ai đặt lời?",
    "options": ['Phan Trần Bảng', 'Lê Minh Châu', 'Hoàng Long', 'Cả a & b'],
    "answer_index": 4,
  },
  {
    "id": 27,
    "question": "Bài hát TĐN số 4 do ai sáng tác?",
    "options": ['Bettoven', 'Mô da', 'Traicopxki', 'Võ Hoài Linh'],
    "answer_index": 2,
  },
  {
    "id": 28,
    "question": "Bài hát Đi cấy thuộc dân ca gì?",
    "options": ['Nam bộ', 'Bắc bộ', 'Thanh Hoá', 'Quảng Ninh'],
    "answer_index": 3,
  },
  {
    "id": 29,
    "question": "Đàn bầu còn có tên gọi khác là gì?",
    "options": ['Đàn cò', 'Đàn nguyệt', 'Đàn thập lục', 'Độc huyền cầm'],
    "answer_index": 42,
  },
  {
    "id": 30,
    "question": "Đàn nào dùng que gẫy?",
    "options": ['Đàn tranh', 'Đàn nguyệt', 'Đàn bầu', 'Đàn thập lục'],
    "answer_index": 3,
  }, */
];
