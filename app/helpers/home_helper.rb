module HomeHelper
    def whatsapp_share_url(message, url)
        # Encode the message and URL
        encoded_message = ERB::Util.url_encode(message)
        encoded_url = ERB::Util.url_encode(url)
      
        # Generate the WhatsApp share URL
        "https://wa.me/?text=#{encoded_message}%20#{encoded_url}"
      end

      def instagram_share_url(message, url)
        # Encode the message and URL
        encoded_message = ERB::Util.url_encode(message)
        encoded_url = ERB::Util.url_encode(url)
      
        # Generate the Instagram share URL
        "https://www.instagram.com/?text=#{encoded_message}%20#{encoded_url}"
      end
      def facebook_share_url(message, url)
        # Encode the message and URL
        encoded_message = ERB::Util.url_encode(message)
        encoded_url = ERB::Util.url_encode(url)
        
        # Generate the Facebook share URL
        "https://www.facebook.com/sharer/sharer.php?u=#{encoded_url}&quote=#{encoded_message}"
      end
      def twitter_share_url(message, url)
        # Encode the message and URL
        encoded_message = ERB::Util.url_encode(message)
        encoded_url = ERB::Util.url_encode(url)
      
        # Generate the Twitter share URL
        "https://twitter.com/intent/tweet?text=#{encoded_message}&url=#{encoded_url}"
      end
      def copy_url(url)
        # Encode the URL
        encoded_url = ERB::Util.url_encode(url)
      
        # Generate the copy URL
        "javascript:void(copyToClipboard('#{encoded_url}'))"
      end
          
      
       
       
end
