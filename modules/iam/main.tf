resource "aws_iam_user" "iam_user" {
  name = var.iam_username
}

resource "aws_iam_user_policy_attachment" "policy" {
  for_each = toset(var.policy_arn)
  
  user = aws_iam_user.iam_user.name
  policy_arn = each.value
}
