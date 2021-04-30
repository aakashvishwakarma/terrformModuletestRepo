provider "aws"{
    region = "us-east-1"

}
module "bucket"{
    source ="../module/s3Bucket"
    #bucket_name ="Any unique name"
    acl         = "public-read"
}