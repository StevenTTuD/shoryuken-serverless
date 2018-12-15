require 'json'
require 'ostruct'
require 'shoryuken'

def to_sqs_msg(record)
  # sample record
  # "messageId": "...",
  # "receiptHandle": "...",
  # "body": "...",
  # "attributes": {
  #     "ApproximateReceiveCount": "1",
  #     "SentTimestamp": "1544881108683",
  #     "SenderId": "...:pablo",
  #     "ApproximateFirstReceiveTimestamp": "1544881108691"
  # },
  # "messageAttributes": {},
  # "md5OfBody": "...",
  # "eventSource": "aws:sqs",
  # "eventSourceARN": "arn:aws:sqs:us-east-1::ShoryukenServerlessStack-ShoryukenServerlessQueue3F424389-1J4POJ8CG1G88",
  # "awsRegion": "us-east-1"
  #
  # create a Shoryuken compatible message
  # so that this https://github.com/phstc/shoryuken/blob/master/lib/shoryuken/default_worker_registry.rb#L15
  # and this https://github.com/phstc/shoryuken/blob/352b20642b4b8a123b821228231ed5a5c618a9cc/lib/shoryuken/body_parser.rb
  # work
  OpenStruct.new(
    message_attributes: record['messageAttributes'],
    body: record['body'],
    queue: record['eventSourceARN'].split(':').last
  )
end

class TestWorker
  include Shoryuken::Worker

  shoryuken_options queue: 'ShoryukenServerlessStack-ShoryukenServerlessQueue3F424389-1J4POJ8CG1G88'

  def perform(_sqs_msg, name)
    puts "Hello, #{name}"
  end
end

def handler(event:, context:)
  event['Records'].each do |record|
    sqs_msg = to_sqs_msg(record)
    Shoryuken::Processor.process(sqs_msg.queue, sqs_msg)
  end
end