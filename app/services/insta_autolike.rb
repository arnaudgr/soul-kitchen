
require 'watir' # Crawler
require 'pry' # Ruby REPL
require 'rb-readline' # Ruby IRB
require 'awesome_print' # Console output
# Pulls in login credentials from credentials.rb

require 'dotenv'

class InstaAutolike


 


 def like
    username = ENV['INSTA_USERNAME']
    password = ENV['INSTA_PASSWORD']
    hashtags = ['food']
    like_counter = 0
    post_index = 0
    # num_of_rounds = 0
    # MAX_LIKES = 80
    start_time = Time.now


# Open Browser, Navigate to Login page
browser = Watir::Browser.new :chrome
browser.goto "https://www.instagram.com/accounts/login/?source=auth_switcher"

# Navigate to Username and Password fields, inject info
ap "Logging in..."
browser.text_field(:name => "username").set "#{username}"
browser.text_field(:name => "password").set "#{password}"

# Click Login Button
browser.button(:class => ['_0mzm- sqdOP  L3NKy       ']).click
sleep(2)

browser.button(:class => ['aOOlW  bIiDR  ']).click
sleep(2)

loop do
    hashtags.each do |hashtag|
        browser.goto "instagram.com/explore/tags/#{hashtag}/"
        post_index = 0
        3.times do |i|
            browser.driver.execute_script("window.scrollBy(0,document.body.scrollHeight)")
            sleep(1.0 / 2.0)
        end

        if browser.div(class: "_9AhH0").exists?
            ap "#{browser.divs(class: "_9AhH0").size} posts in all"
            browser.divs(class: "_9AhH0").each do |val|
                if val.exists?
                    sleep(1)
                    begin
                        val.click
                    rescue
                        ap "Selenium click problem. Going to next post."
                        break
                    end
                    sleep(1)
                    if browser.span(class: ["glyphsSpriteHeart__outline__24__grey_9", "u-__7"]).exists?
                        browser.span(class: ["glyphsSpriteHeart__outline__24__grey_9", "u-__7"]).click
                        # if browser.textarea(class: "Ypffh").exists?
                        #     browser.textarea(class: "Ypffh").set "WUFF it!"
                        #     sleep(1)
                        #     browser.form(class: "X7cDz").submit
                        # end
                        like_counter += 1
                        sleep(40)
                    end
                    sleep(1)
                    if browser.button(class: "ckWGn").exists?
                        browser.button(class: "ckWGn").click
                        sleep(1)
                    else
                        break
                    end
                    ap "#{like_counter} posts liked"
                    post_index += 1
                end
                # break if like_counter >= MAX_LIKES
                break if post_index >= 20
            end
            ap "Liked #{like_counter} posts in #{(Time.now - start_time)/60} minutes."
            ap "#{like_counter/((Time.now - start_time)/60/60)} likes per hour."
        end
        # break if like_counter >= MAX_LIKES
    end
end


#   num_of_rounds += 1
#   puts "--------- #{like_counter / num_of_rounds} likes per round (on average) ----------"
#   break if like_counter >= MAX_LIKES
#   sleep(30) # Return to top of loop after this many seconds to check for new photos
# end

# Leave this in to use the REPL at end of program
# Otherwise, take it out and program will just end
Pry.start(binding)

end 
end
