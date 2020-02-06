User.create!(name: "admin2",
            email: "admin2@co.jp",
            password: "admin12345",
            password_confirmation: "admin12345" ,
            administrator: true)
            
Category.create([
  {name: "現代文"},
  {name: "古文"},
  {name: "漢文"},
  {name: "中学数学"},
  {name: "数学Ⅰ・A"},
  {name: "数学Ⅱ・B"},
  {name: "数学Ⅲ・C"},
  {name: "英語　長文読解"},
  {name: "英語　英文法"},
  {name: "英語　英単語"},
  {name: "中学理科"},
  {name: "化学"},
  {name: "物理"},
  {name: "中学社会"},
  {name: "日本史"},
  {name: "世界史"},
  {name: "地理"}
  ])
  
  Question.create([
  {category_id: 1, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 2, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 3, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 4, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 5, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 6, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 7, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 8, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 9, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 10, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 11, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 12, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 13, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 14, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 15, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 16, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"},
  {category_id: 17, user_id: 1, title: "全然分かりません", content: "何が分からないかも分かりません。"}
    ])
    
  Answer.create([
    {question_id: 1, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 2, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 3, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 4, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 5, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 6, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 7, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 8, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 9, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 10, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 11, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 12, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 13, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 14, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 15, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 16, user_id: 1, ans: "それでは答えようがありません。"},
    {question_id: 17, user_id: 1, ans: "それでは答えようがありません。"}
    ])
    
    Tweet.create([
      {category_id: 1, user_id: 1, text: "全然分かりません"},
      {category_id: 2, user_id: 1, text: "全然分かりません"},
      {category_id: 3, user_id: 1, text: "全然分かりません"},
      {category_id: 4, user_id: 1, text: "全然分かりません"},
      {category_id: 5, user_id: 1, text: "全然分かりません"},
      {category_id: 6, user_id: 1, text: "全然分かりません"},
      {category_id: 7, user_id: 1, text: "全然分かりません"},
      {category_id: 8, user_id: 1, text: "全然分かりません"},
      {category_id: 9, user_id: 1, text: "全然分かりません"},
      {category_id: 10, user_id: 1, text: "全然分かりません"},
      {category_id: 11, user_id: 1, text: "全然分かりません"},
      {category_id: 12, user_id: 1, text: "全然分かりません"},
      {category_id: 13, user_id: 1, text: "全然分かりません"},
      {category_id: 14, user_id: 1, text: "全然分かりません"},
      {category_id: 15, user_id: 1, text: "全然分かりません"},
      {category_id: 16, user_id: 1, text: "全然分かりません"},
      {category_id: 17, user_id: 1, text: "全然分かりません"}
    ])