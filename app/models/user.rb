class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable(登録確認メール), :lockable(パスワード失敗でのアカウントロック),
  # :timeoutable(活動してないログイン強制解除), :trackable(アプリ使用回数、時間データ) and :omniauthable(SNS認証)
  devise :database_authenticatable, :registerable,     # ・パスワード検証＋暗号化  ・Userの登録編集削除
         :recoverable, :rememberable, :validatable     # ・パスワードリセット ・20日間ログインを継続  ・emailのバリデーション


  # 
end
