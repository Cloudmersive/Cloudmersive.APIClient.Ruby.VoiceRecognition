=begin
#speechapi

#Speech APIs enable you to recognize speech and convert it to text using advanced machine learning, and also to convert text to speech.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'uri'

module CloudmersiveVoiceRecognitionApiClient
  class RecognizeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Recognize audio input as text using machine learning
    # Uses advanced machine learning to convert input audio, which can be mp3 or wav, into text.
    # @param speech_file Speech file to perform the operation on.  Common file formats such as WAV, MP3 are supported.
    # @param [Hash] opts the optional parameters
    # @return [SpeechRecognitionResult]
    def recognize_file(speech_file, opts = {})
      data, _status_code, _headers = recognize_file_with_http_info(speech_file, opts)
      data
    end

    # Recognize audio input as text using machine learning
    # Uses advanced machine learning to convert input audio, which can be mp3 or wav, into text.
    # @param speech_file Speech file to perform the operation on.  Common file formats such as WAV, MP3 are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SpeechRecognitionResult, Fixnum, Hash)>] SpeechRecognitionResult data, response status code and response headers
    def recognize_file_with_http_info(speech_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecognizeApi.recognize_file ...'
      end
      # verify the required parameter 'speech_file' is set
      if @api_client.config.client_side_validation && speech_file.nil?
        fail ArgumentError, "Missing the required parameter 'speech_file' when calling RecognizeApi.recognize_file"
      end
      # resource path
      local_var_path = '/speech/recognize/file'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params['speechFile'] = speech_file

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SpeechRecognitionResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecognizeApi#recognize_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
