# config/initializers/solid_queue.rb

# アプリケーション初期化後に SolidQueue の設定を実行
Rails.application.config.after_initialize do
  # SolidQueue::Record が定義されている場合のみ実行
  if defined?(SolidQueue::Record)
    # SolidQueue が primary データベース接続を使用するように設定
    SolidQueue::Record.connects_to database: { writing: :primary, reading: :primary } 
  end
end