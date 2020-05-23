# CloudmersiveVoiceRecognitionApiClient::SpeakApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**speak_post**](SpeakApi.md#speak_post) | **POST** /speech/speak/text/basicVoice/{format} | Perform text-to-speech on a string
[**speak_text_to_speech**](SpeakApi.md#speak_text_to_speech) | **POST** /speech/speak/text/voice/basic/audio | Perform text-to-speech on a string


# **speak_post**
> Object speak_post(format, text)

Perform text-to-speech on a string

Takes as input a string and a file format (mp3 or wav) and outputs a wave form in the appropriate format.

### Example
```ruby
# load the gem
require 'cloudmersive-voice-recognition-api-client'
# setup authorization
CloudmersiveVoiceRecognitionApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVoiceRecognitionApiClient::SpeakApi.new

format = "format_example" # String | File format to generate response in; possible values are \"mp3\" or \"wav\"

text = "text_example" # String | The text you would like to conver to speech.  Be sure to surround with quotes, e.g. \"The quick brown fox jumps over the lazy dog.\"


begin
  #Perform text-to-speech on a string
  result = api_instance.speak_post(format, text)
  p result
rescue CloudmersiveVoiceRecognitionApiClient::ApiError => e
  puts "Exception when calling SpeakApi->speak_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| File format to generate response in; possible values are \&quot;mp3\&quot; or \&quot;wav\&quot; | 
 **text** | **String**| The text you would like to conver to speech.  Be sure to surround with quotes, e.g. \&quot;The quick brown fox jumps over the lazy dog.\&quot; | 

### Return type

**Object**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream



# **speak_text_to_speech**
> Object speak_text_to_speech(req_config)

Perform text-to-speech on a string

Takes as input a string and a file format (mp3 or wav) and outputs a wave form in the appropriate format.

### Example
```ruby
# load the gem
require 'cloudmersive-voice-recognition-api-client'
# setup authorization
CloudmersiveVoiceRecognitionApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVoiceRecognitionApiClient::SpeakApi.new

req_config = CloudmersiveVoiceRecognitionApiClient::TextToSpeechRequest.new # TextToSpeechRequest | String input request


begin
  #Perform text-to-speech on a string
  result = api_instance.speak_text_to_speech(req_config)
  p result
rescue CloudmersiveVoiceRecognitionApiClient::ApiError => e
  puts "Exception when calling SpeakApi->speak_text_to_speech: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req_config** | [**TextToSpeechRequest**](TextToSpeechRequest.md)| String input request | 

### Return type

**Object**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



