Object.class_eval do

  def M?(*args)
    trace = "...#{/.*(\/.*).*(\/.*):in.*/.match(caller.first).captures.join}"
    info_str = "[#{Time.now.strftime("%F %T")}] #{trace}"

    open("#{Rails.root.to_s}/log/m.log", 'a') do |file|
      file.puts info_str
      file.puts args
    end

  rescue
    "No variable logging possible here"
  end

end
