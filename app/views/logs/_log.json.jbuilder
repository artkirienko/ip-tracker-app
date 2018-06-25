json.extract! log, :id, :remote_ip, :created_at, :updated_at
json.url log_url(log, format: :json)
