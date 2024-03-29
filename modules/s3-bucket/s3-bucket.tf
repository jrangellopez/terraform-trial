resource "aws_s3_bucket" "s3Bucket" {
  bucket = "jrangelpersonal_sonarcloud"
  acl    = "public-read"

  policy = <<EOF
{
     "id" : "MakePublic",
   "version" : "2012-10-17",
   "statement" : [
      {
         "action" : [
             "s3:GetObject"
          ],
         "effect" : "Allow",
         "resource" : "arn:aws:s3:::jrangelpersonal_sonarcloud/*",
         "principal" : "*"
      }
    ]
  }
EOF

  /* website {
    index_document = "index.html"
  } */
}

