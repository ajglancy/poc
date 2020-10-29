# -*- encoding: utf-8 -*-
# stub: train-aws 0.1.18 ruby lib

Gem::Specification.new do |s|
  s.name = "train-aws".freeze
  s.version = "0.1.18"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chef InSpec Team".freeze]
  s.date = "2020-09-09"
  s.description = "Allows applications using Train to speak to AWS; handles authentication, cacheing, and SDK dependency management.".freeze
  s.email = ["inspec@chef.io".freeze]
  s.homepage = "https://github.com/inspec/train-aws".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "AWS API Transport for Train".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<aws-sdk-apigateway>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-apigatewayv2>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-athena>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-autoscaling>.freeze, ["~> 1.22.0"])
    s.add_runtime_dependency(%q<aws-sdk-budgets>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-cloudformation>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-cloudfront>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-cloudhsm>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-cloudhsmv2>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-cloudtrail>.freeze, ["~> 1.8"])
    s.add_runtime_dependency(%q<aws-sdk-cloudwatch>.freeze, ["~> 1.13"])
    s.add_runtime_dependency(%q<aws-sdk-cloudwatchlogs>.freeze, ["~> 1.13"])
    s.add_runtime_dependency(%q<aws-sdk-codecommit>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-codedeploy>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-codepipeline>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-configservice>.freeze, ["~> 1.21"])
    s.add_runtime_dependency(%q<aws-sdk-core>.freeze, ["~> 3.0"])
    s.add_runtime_dependency(%q<aws-sdk-costandusagereportservice>.freeze, ["~> 1.6"])
    s.add_runtime_dependency(%q<aws-sdk-dynamodb>.freeze, ["~> 1.31"])
    s.add_runtime_dependency(%q<aws-sdk-ec2>.freeze, ["~> 1.70"])
    s.add_runtime_dependency(%q<aws-sdk-ecr>.freeze, ["~> 1.18"])
    s.add_runtime_dependency(%q<aws-sdk-ecs>.freeze, ["~> 1.30"])
    s.add_runtime_dependency(%q<aws-sdk-efs>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-eks>.freeze, ["~> 1.9"])
    s.add_runtime_dependency(%q<aws-sdk-elasticache>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-elasticbeanstalk>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-elasticloadbalancing>.freeze, ["~> 1.8"])
    s.add_runtime_dependency(%q<aws-sdk-elasticloadbalancingv2>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-elasticsearchservice>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-firehose>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-guardduty>.freeze, ["~> 1.31"])
    s.add_runtime_dependency(%q<aws-sdk-iam>.freeze, ["~> 1.13"])
    s.add_runtime_dependency(%q<aws-sdk-kafka>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-kinesis>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-kms>.freeze, ["~> 1.13"])
    s.add_runtime_dependency(%q<aws-sdk-lambda>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-organizations>.freeze, ["~> 1.17.0"])
    s.add_runtime_dependency(%q<aws-sdk-rds>.freeze, ["~> 1.43"])
    s.add_runtime_dependency(%q<aws-sdk-redshift>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-route53>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-route53domains>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-route53resolver>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-s3>.freeze, ["~> 1.30"])
    s.add_runtime_dependency(%q<aws-sdk-securityhub>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-ses>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-sms>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<aws-sdk-sns>.freeze, ["~> 1.9"])
    s.add_runtime_dependency(%q<aws-sdk-sqs>.freeze, ["~> 1.10"])
    s.add_runtime_dependency(%q<aws-sdk-ssm>.freeze, ["~> 1.0"])
  else
    s.add_dependency(%q<aws-sdk-apigateway>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-apigatewayv2>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-athena>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-autoscaling>.freeze, ["~> 1.22.0"])
    s.add_dependency(%q<aws-sdk-budgets>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-cloudformation>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-cloudfront>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-cloudhsm>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-cloudhsmv2>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-cloudtrail>.freeze, ["~> 1.8"])
    s.add_dependency(%q<aws-sdk-cloudwatch>.freeze, ["~> 1.13"])
    s.add_dependency(%q<aws-sdk-cloudwatchlogs>.freeze, ["~> 1.13"])
    s.add_dependency(%q<aws-sdk-codecommit>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-codedeploy>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-codepipeline>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-configservice>.freeze, ["~> 1.21"])
    s.add_dependency(%q<aws-sdk-core>.freeze, ["~> 3.0"])
    s.add_dependency(%q<aws-sdk-costandusagereportservice>.freeze, ["~> 1.6"])
    s.add_dependency(%q<aws-sdk-dynamodb>.freeze, ["~> 1.31"])
    s.add_dependency(%q<aws-sdk-ec2>.freeze, ["~> 1.70"])
    s.add_dependency(%q<aws-sdk-ecr>.freeze, ["~> 1.18"])
    s.add_dependency(%q<aws-sdk-ecs>.freeze, ["~> 1.30"])
    s.add_dependency(%q<aws-sdk-efs>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-eks>.freeze, ["~> 1.9"])
    s.add_dependency(%q<aws-sdk-elasticache>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-elasticbeanstalk>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-elasticloadbalancing>.freeze, ["~> 1.8"])
    s.add_dependency(%q<aws-sdk-elasticloadbalancingv2>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-elasticsearchservice>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-firehose>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-guardduty>.freeze, ["~> 1.31"])
    s.add_dependency(%q<aws-sdk-iam>.freeze, ["~> 1.13"])
    s.add_dependency(%q<aws-sdk-kafka>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-kinesis>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-kms>.freeze, ["~> 1.13"])
    s.add_dependency(%q<aws-sdk-lambda>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-organizations>.freeze, ["~> 1.17.0"])
    s.add_dependency(%q<aws-sdk-rds>.freeze, ["~> 1.43"])
    s.add_dependency(%q<aws-sdk-redshift>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-route53>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-route53domains>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-route53resolver>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-s3>.freeze, ["~> 1.30"])
    s.add_dependency(%q<aws-sdk-securityhub>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-ses>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-sms>.freeze, ["~> 1.0"])
    s.add_dependency(%q<aws-sdk-sns>.freeze, ["~> 1.9"])
    s.add_dependency(%q<aws-sdk-sqs>.freeze, ["~> 1.10"])
    s.add_dependency(%q<aws-sdk-ssm>.freeze, ["~> 1.0"])
  end
end
