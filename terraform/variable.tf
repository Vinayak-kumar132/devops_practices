variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
    description = "AMI ID for the EC2 instance"
    type = string
    default = "ami-02d26659fd82cf299" 

}