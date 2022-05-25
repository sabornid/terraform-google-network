/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
     
   
variable "name" {
  type        = "string"
  description = "Subnet name to create on GCP"
}

variable "vpc" {
  type        = "string"
  description = "Direct link to the network"
}

variable "subnetwork-region" {
  type        = "string"
  default     = ""
  description = "Zone associated with the subnet. This defaults to the region configured in the provider."
}

variable "ip_cidr_range" {
  type        = "string"
  description = "IP range to book"
}
     
variable "secondary_ranges" {
  type        = map(list(object({ range_name = string, ip_cidr_range = string })))
  description = "Secondary ranges that will be used in some of the subnets"
  default     = {}
}
