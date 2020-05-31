# CloudmersiveVoiceRecognitionApiClient::RecognizeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recognize_file**](RecognizeApi.md#recognize_file) | **POST** /speech/recognize/file | Recognize audio input as text using machine learning


# **recognize_file**
> SpeechRecognitionResult recognize_file(speech_file)

Recognize audio input as text using machine learning

Uses advanced machine learning to convert input audio, which can be mp3 or wav, into text.

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

api_instance = CloudmersiveVoiceRecognitionApiClient::RecognizeApi.new

speech_file = File.new('/path/to/file.txt') # File | Speech file to perform the operation on.  Common file formats such as WAV, MP3 are supported.


begin
  #Recognize audio input as text using machine learning
  result = api_instance.recognize_file(speech_file)
  p result
rescue CloudmersiveVoiceRecognitionApiClient::ApiError => e
  puts "Exception when calling RecognizeApi->recognize_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **speech_file** | **File**| Speech file to perform the operation on.  Common file formats such as WAV, MP3 are supported. | 

### Return type

[**SpeechRecognitionResult**](SpeechRecognitionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



