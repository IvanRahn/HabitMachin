json.extract! log, :id, :date, :user_id, :h1, :h2, :h3, :h4, :waking_time, :sleep_time, :image, :content, :created_at, :updated_at
json.url log_url(log, format: :json)
