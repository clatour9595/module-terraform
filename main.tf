resource "aws_iam_access_key" "our_users_access_key" {
    for_each = toset(var.MES_UTILISATEURS)
    user = aws_iam_user.our_users[each.value]
}
  

resource "aws_iam_user" "utilisateur" {
    for_each = toset(var.USERS)
    Name = each.values

}