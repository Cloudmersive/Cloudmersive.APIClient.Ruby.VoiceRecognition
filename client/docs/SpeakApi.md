# CloudmersiveVoiceRecognitionApiClient::SpeakApi

All URIs are relative to *https://testapi.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**speech_speak_text_voice_basic_audio_post**](SpeakApi.md#speech_speak_text_voice_basic_audio_post) | **POST** /speech/speak/text/voice/basic/audio | Generate audio from text using Advanced AI


# **speech_speak_text_voice_basic_audio_post**
> String speech_speak_text_voice_basic_audio_post(opts)

Generate audio from text using Advanced AI

Converts text to speech using advanced AI. Supports English, Spanish, French, Hindi, Italian, Japanese, Portuguese, and Chinese. Specify language with LanguageCode (ISO 639-3, default: eng) and gender with Gender (Male or Female, default: Female). Output format is controlled by the Format field (mp3 or wav, default: mp3). Consumes 1 API call per second of generated audio.

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

opts = { 
  body: CloudmersiveVoiceRecognitionApiClient::TextToSpeechRequest.new # TextToSpeechRequest | String input request
}

begin
  #Generate audio from text using Advanced AI
  result = api_instance.speech_speak_text_voice_basic_audio_post(opts)
  p result
rescue CloudmersiveVoiceRecognitionApiClient::ApiError => e
  puts "Exception when calling SpeakApi->speech_speak_text_voice_basic_audio_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TextToSpeechRequest**](TextToSpeechRequest.md)| String input request | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: application/octet-stream



