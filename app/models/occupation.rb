class Occupation < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '事務系会社員' },
    { id: 3, name: '技術系会社員' },
    { id: 4, name: '経営者・役員' },
    { id: 5, name: '公務員' },
    { id: 6, name: '自営業' },
    { id: 7, name: '自由業' },
    { id: 8, name: '専業主婦(主夫)' },
    { id: 9, name: 'パート・アルバイト' },
    { id: 10, name: '学生' },
    { id: 11, name: 'その他' },
    { id: 12, name: '無職' }
  ]
end
