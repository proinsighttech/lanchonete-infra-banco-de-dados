provider "aws" {
  region = "us-west-2"
}

resource "aws_db_instance" "database-snack-shop" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mysql"
  instance_class       = "db.t3.micro"
  identifier           = var.DB_NAME
  username             = var.DB_USERNAME
  password             = var.DB_PASSWORD
  skip_final_snapshot  = true
  publicly_accessible  = true
  vpc_security_group_ids = [aws_security_group.database-snack-shop-tg.id]
}

resource "aws_security_group" "database-snack-shop-tg" {
  name        = "database-snack-shop-tg"
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}