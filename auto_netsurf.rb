# coding: utf-8
  
require 'open-uri'
require 'nokogiri'
require 'launchy'


def pick_all_url()
    url = 'https://www.jma.go.jp/jma/index.html'
    # ここにurlを入力

    puts"url-> #{url}"
 
    html = URI.open(url).read
    # url にアクセスしhtmlを取得
    
    doc = Nokogiri::HTML.parse(html)
    #　htmlをparse
    
    (doc/:a).each do |link|
        href = link[:href]
        if href != nil then
            if href.include?("http") == true
                puts "#{href}\n"
                url_read(href)
            end
        end
    end
end


def url_read(inputs_url)#入力されたURLの内容を読む
#    puts 'URL ->'
#    inputs_url = gets.chomp
    uri = URI(inputs_url)
    result = uri.read
    result.bytesize
    result.status 
    puts"\n"
    puts"bytesize->#{result.bytesize}"
    puts"status->.#{result.status}"
    puts"\n"
    if result.bytesize < 100000 then 
        Launchy.open inputs_url
    else
        if yes_no()==1
            Launchy.open inputs_url
        end
    end

end  


def yes_no()
  puts '-----------------------------------------------------------------------'
  puts 'The page takes a long time to load, does it really open?  : yes or no'
  case gets.chomp
  when "y","yes"
    return 1;
  when "n","no"
    puts 'not open'
  else puts 'Please type yes or no'
  end
  puts '-----------------------------------------------------------------------'
end



pick_all_url()
