# CloudmersiveVoiceRecognitionApiClient::RecognizeApi

All URIs are relative to *https://testapi.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**speech_recognize_file_post**](RecognizeApi.md#speech_recognize_file_post) | **POST** /speech/recognize/file | Recognize audio input as text using Advanced AI


# **speech_recognize_file_post**
> SpeechRecognitionResult speech_recognize_file_post(opts)

Recognize audio input as text using Advanced AI

Uses advanced AI to convert input audio to text. Supports WAV, MP3, M4A, FLAC, OGG, and WMA formats. Consumes 1 API call per second of audio in Fast mode, 5 API calls per second in Normal mode, and 10 API calls per second in Advanced mode.

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

opts = { 
  language_code: '', # String | ISO 639-3 three-letter language code (e.g. eng, spa, fra). Empty for auto-detect.
  recognition_mode: 'Normal', # String | Recognition mode: Fast, Normal (default), or Advanced. Advanced is only available on Private Cloud and Managed Instance deployments.
  speech_file: File.new('/path/to/file.txt') # File | 
}

begin
  #Recognize audio input as text using Advanced AI
  result = api_instance.speech_recognize_file_post(opts)
  p result
rescue CloudmersiveVoiceRecognitionApiClient::ApiError => e
  puts "Exception when calling RecognizeApi->speech_recognize_file_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language_code** | **String**| ISO 639-3 three-letter language code (e.g. eng, spa, fra). Empty for auto-detect. | [optional] [default to ]
 **recognition_mode** | **String**| Recognition mode: Fast, Normal (default), or Advanced. Advanced is only available on Private Cloud and Managed Instance deployments. | [optional] [default to Normal]
 **speech_file** | **File**|  | [optional] 

### Return type

[**SpeechRecognitionResult**](SpeechRecognitionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json



