class Question_Lich_Su {
  final int id, answer;
  final String question;
  final List<String> options;

  Question_Lich_Su(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List question_lich_su = [
  {
    "id": 1,
    "question":
        "Tham dự Hội nghị Ianta (2-1945) có nguyên thủ của những quốc gia nào dưới đây?",
    "options": [
      'Anh, Pháp, Mĩ.',
      'Anh, Pháp, Đức.',
      'Liên Xô, Mĩ, Anh.',
      'Mĩ, Liên Xô, Trung Quốc.'
    ],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "Hội nghị Ianta (Liên Xô) diễn ra trong khoảng thời gian nào?",
    "options": [
      'Từ ngày 4 đến 11-2-1945.',
      'Từ ngày 2 đến 12-2-1945.',
      'Từ ngày 2 đến 12-4-1945.',
      'Từ ngày 4 đến 12-4-1945.'
    ],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question":
        "Hội nghị cấp cao của ba cường quốc Liên Xô, Mĩ, Anh diễn ra từ ngày 4 đến 11-2-1945 được tổ chức tại đâu?",
    "options": [
      'Oasinhtơn (Mĩ).',
      'Ianta (Liên Xô).',
      'Pốtxđam (Đức).',
      'Luân Đôn (Anh).'
    ],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question":
        "Theo quyết định của Hội nghị Ianta (2-1945), quân đội nước nào sẽ vào chiếm đóng Nhật Bản và Nam Triều Tiên?",
    "options": ['Mĩ.', 'Anh.', 'Pháp.', 'Liên Xô.'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question": "Sự kiện nào dưới đây gắn liền với ngày 24-10-1945?",
    "options": [
      'Bản Hiến chương Liên hợp quốc chính thức có hiệu lực.',
      'Mĩ và Liên Xô phê chuẩn bản Hiến chương Liên hợp quốc.',
      'Hội nghị Xan Phranxixcô (Mĩ) thông qua bản Hiến chương Liên hợp quốc.',
      'Năm nước Ủy viên thường trực Hội đồng Bảo an thông qua bản Hiến chương.'
    ],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Tháng 9-1977, Việt Nam đã gia nhập vào tổ chức nào dưới đây?",
    "options": [
      'Liên hợp quốc (UN).',
      'Hội đồng tương trợ kinh tế (SEV).',
      'Tổ chức thương mại thế giới(WTO).',
      'Hiệp hội các quốc gia Đông Nam Á (ASEAN).'
    ],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question":
        "Có bao nhiêu nước là thành viên sáng lập tổ chức Liên hợp quốc?",
    "options": ['30.', '40.', '45.', '50.'],
    "answer_index": 4,
  },
  {
    "id": 8,
    "question":
        "Cơ quan nào của Liên hợp quốc có sự tham gia đầy đủ đại diện các nước thành viên và mỗi năm họp một lần?",
    "options": [
      'Ban Thư kí.',
      'Đại hội đồng.',
      'Hội đồng Bảo an.',
      'Hội đồng Quản thác.'
    ],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question":
        "9.Hiến chương Liên hợp quốc được thông qua tại hội nghị nào dưới đây?",
    "options": [
      'Hội nghị Ianta (Liên Xô)',
      'Hội nghị Niu Oóc (Mĩ).',
      'Hội nghị Pốtxđam (Đức).',
      'Hội nghị Xan Phranxixcô (Mĩ).'
    ],
    "answer_index": 4,
  },
  {
    "id": 10,
    "question": "Tổ chức nào dưới đây là tiền thân của tổ chức Liên hợp quốc ?",
    "options": [
      'Hội Quốc liên.',
      'Đệ nhị Quốc tế.',
      'Liên minh vì tiến bộ.',
      'Khối Đồng minh chống phát xít.'
    ],
    "answer_index": 1,
  },
  /* {
    "id": 11,
    "question":
        "Hiện nay, tổ chức Liên hợp quốc có bao nhiêu nước thành viên?",
    "options": ['190.', '191.', '192.', '193.'],
    "answer_index": 4,
  },
  {
    "id": 12,
    "question":
        "Hội đồng Bảo an Liên hợp quốc hiện nay có bao nhiêu nước thành viên?",
"options": ['5.', '7.', '10.', '15.'],
    "answer_index": 4,
  },
  {
    "id": 13,
    "question": "Theo quyết định của Hội nghị Ianta, nước nào sẽ chiếm đóng Nhật Bản sau Chiến tranh thế giới thứ hai?",
    "options": ['Mĩ.', 'Anh.', 'Liên Xô.', 'Trung Quốc.'],
    "answer_index": 1,
  },
  {
    "id": 14,
    "question": "“Duy trì hòa bình và an ninh thế giới” là mục đích hoạt động của tổ chức nào dưới đây?",
    "options": [
      'Hiệp hội các quốc gia Đông Nam Á (ASEAN).', 
      'Hiệp ước Đông Nam Á (SEATO).', 
      'Liên minh châu Âu (EU).', 
      'Liên hợp quốc (UN).'],
    "answer_index": 4,
  },
  {
    "id": 15,
    "question": "Bài hát Tiếng chuông và ngọn cờ là sáng tác của ai?",
    "options": ['Phạm Tuyên', 'Văn Cao', 'Lưu Hữu Phước', 'Võ Hoài Linh'],
    "answer_index": 1,
  },
  {
    "id": 16,
    "question": "Cơ quan nào dưới đây không thuộc tổ chức Liên hợp quốc ?",
    "options": ['Đại hội đồng.', 'Ban Thư kí.', 'Hội đồng bộ trưởng.', 'Hồi đồng Kinh tế và Xã hội.'],
    "answer_index": 3,
  },
  {
    "id": 17,
    "question": "Theo nghị quyết của Hội nghị Pốtxđam,quân đội của những nước nào sẽ làm nhiệm vụ giải giáp chủ nghĩa phát xít ở nước Đức?",
    "options": ['Anh,Pháp,Mĩ và Liên Xô.', 'Liên Xô,Mĩ,Canada và Pháp.', 'Anh,Liên Xô,Trung Quốc và Mĩ.', 'Anh,Pháp, Mĩ,Pháp,Anh và Canada.'],
    "answer_index": 4,
  },
  {
    "id": 18,
    "question": "Sự kiện nào dưới đây góp phần hình thành khuôn khổ trật tự thế giới mới sau Chiến tranh thế giới thứ hai?",
    "options": [
      'Hội nghị Ianta (2 – 1945).',
      'Nhật Bản đầu hàng Đồng minh.',
      'Tổ chức Liên hợp quốc được thành lập.',
'Tuyên bố của Tổng thống Mĩ Truman (3 – 1947).'
    ],
    "answer_index": 1,
  },
  {
    "id": 19,
    "question": "Kế hoạch 5 năm khôi phục kinh tế của Liên Xô đã hoàn thành trong thời gian",
    "options": ['5 năm.', '4 năm 3 tháng.', '4 năm 8 tháng.', '4 năm 9 tháng.'],
    "answer_index": 2,
  },
  {
    "id": 20,
    "question":
        "Mở đầu kỉ nguyên chinh phục vũ trụ của loài người là nước",
    "options": [
      'Mĩ',
      'Liên Xô.',
      'Trung Quốc.',
      'Nhật Bản.'
    ],
    "answer_index": 2,
  }, */
];
