module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "my-lambda1"
  description   = "My awesome lambda function"
  handler       = "index.lambda_handler"
  runtime       = "nodejs16.x"

  source_path = "./build/lambda.zip"

  tags = {
    Name = "my-lambda1"
  }
}