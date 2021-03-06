% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/retrieve.R
\name{sf_retrieve}
\alias{sf_retrieve}
\title{Retrieve Records By Id}
\usage{
sf_retrieve(ids, fields, object_name, api_type = c("REST", "SOAP", "Bulk 1.0",
  "Bulk 2.0"), verbose = FALSE)
}
\arguments{
\item{ids}{\code{vector}, \code{matrix}, \code{data.frame}, or 
\code{tbl_df}; if not a vector, there must be a column called Id (case-insensitive) 
that can be passed in the request}

\item{fields}{character; one or more strings indicating the fields to be returned 
on the records}

\item{object_name}{character; the name of one Salesforce objects that the 
function is operating against (e.g. "Account", "Contact", "CustomObject__c")}

\item{api_type}{character; one of "REST", "SOAP", or "Bulk" indicating 
which API to use when making the request}

\item{verbose}{logical; do you want informative messages?}
}
\value{
\code{tibble}
}
\description{
Retrieves one or more new records to your organization’s data.
}
\examples{
\dontrun{
n <- 3
new_contacts <- tibble(FirstName = rep("Test", n),
                       LastName = paste0("Contact", 1:n))
new_contacts_result <- sf_create(new_contacts, object_name="Contact")
retrieved_records <- sf_retrieve(ids=new_contacts_result$id,
                                 fields=c("LastName"),
                                 object_name="Contact")
}
}
