# NAME

WebService::Amazon::Support - The great new WebService::Amazon::Support!

# VERSION

Version 0.0.3

# SYNOPSIS

This module provides a Perl wrapper around Amazon's Support API 
( [http://docs.aws.amazon.com/awssupport/latest/APIReference/Welcome.html](http://docs.aws.amazon.com/awssupport/latest/APIReference/Welcome.html) ).  You will need 
to be an AWS customer with an ID and Secret which has been provided 
access to Support.

**Note:** Some parameter validation is purposely lax. The API will 
generally fail when invalid params are passed. The errors may not 
be helpful.

    use WebService::Amazon::Support;

    my $sup = WebService::Amazon::Support->new( param => { id     => $AWS_ACCESS_KEY_ID,
                                                           secret => $AWS_ACCESS_KEY_SECRET } );
    ...

# INTERFACE

## new

Inherited from [WebService::Simple](https://metacpan.org/pod/WebService::Simple), and takes all the same arguments. 
You **must** provide the Amazon required arguments of **id**, and **secret** 
in the param hash:

    my $sup = WebService::Amazon::Support->new( param => { id     => $AWS_ACCESS_KEY_ID,
                                                           secret => $AWS_ACCESS_KEY_SECRET } );

- **Parameters**
- id **(required)**

    You can find more information in the AWS docs: 
    [http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html](http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)

- secret **(required)**

    You can find more information in the AWS docs: 
    [http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html](http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)

## AddAttachmentsToSet( )

    Unimplimented (for now)

## AddCommunicationToCase( )

    Unimplimented (for now)

## CreateCase( )

    Unimplimented (for now)

## DescribeAttachment( )

Returns the attachment that has the specified ID. Attachment IDs are 
generated by the case management system when you add an attachment to 
a case or case communication. Attachment IDs are returned in the 
AttachmentDetails objects that are returned by the 
DescribeCommunications operation.

Refer to [http://docs.aws.amazon.com/awssupport/latest/APIReference/API\_DescribeAttachment.html](http://docs.aws.amazon.com/awssupport/latest/APIReference/API_DescribeAttachment.html)

- **Parameters**
- attachmentId **(required string)**

    The ID of the attachment to return. Attachment IDs are returned by the DescribeCommunications operation.

- **Returns: result from API call**

## DescribeCases( )

    Unimplimented (for now)

## DescribeCommunications( )

    Unimplimented (for now)

## DescribeServices( )

Returns a list of the available solution stack names.

Refer to [http://docs.aws.amazon.com/awssupport/latest/APIReference/API\_DescribeServices.html](http://docs.aws.amazon.com/awssupport/latest/APIReference/API_DescribeServices.html)

- **Parameters**
- Language _(optional string)_

    The ISO 639-1 code for the language in which AWS provides support. AWS 
    Support currently supports English ("en") and Japanese ("ja"). Language 
    parameters must be passed explicitly for operations that take them.

- ServiceCodeList _(optional array)_

    A JSON-formatted list of service codes available for AWS services.

    Length constraints: Minimum of 0 item(s) in the list. Maximum of 100 item(s) in the list.

    Required: No

- **Returns: result from API call**

## DescribeSeverityLevels( )

Returns the list of severity levels that you can assign to an AWS 
Support case. The severity level for a case is also a field in the 
CaseDetails data type included in any CreateCase request.

Refer to [http://docs.aws.amazon.com/awssupport/latest/APIReference/API\_DescribeSeverityLevels.html](http://docs.aws.amazon.com/awssupport/latest/APIReference/API_DescribeSeverityLevels.html)

- **Parameters**
- Language _(optional string)_

    The ISO 639-1 code for the language in which AWS provides support. AWS 
    Support currently supports English ("en") and Japanese ("ja"). Language 
    parameters must be passed explicitly for operations that take them.

- **Returns: result from API call**

## DescribeTrustedAdvisorCheckRefreshStatuses( )

Returns the refresh status of the Trusted Advisor checks that have the 
specified check IDs. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.

Refer to [http://docs.aws.amazon.com/awssupport/latest/APIReference/API\_DescribeTrustedAdvisorCheckRefreshStatuses.html](http://docs.aws.amazon.com/awssupport/latest/APIReference/API_DescribeTrustedAdvisorCheckRefreshStatuses.html)

- **Parameters**
- checkIds **(required array)**

    The IDs of the Trusted Advisor checks.

- **Returns: result from API call**

## DescribeTrustedAdvisorCheckResult( )

Returns the results of the Trusted Advisor check that has the specified 
check ID. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.

The response contains a TrustedAdvisorCheckResult object, which contains these three objects:

    TrustedAdvisorCategorySpecificSummary
    TrustedAdvisorResourceDetail
    TrustedAdvisorResourcesSummary

In addition, the response contains these fields:

    Status. The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".
    Timestamp. The time of the last refresh of the check.
    CheckId. The unique identifier for the check.

Refer to [http://docs.aws.amazon.com/awssupport/latest/APIReference/API\_DescribeTrustedAdvisorCheckResult.html](http://docs.aws.amazon.com/awssupport/latest/APIReference/API_DescribeTrustedAdvisorCheckResult.html)

- **Parameters**
- checkIds **(required string)**

    The ID of the Trusted Advisor check.

- Language _(optional string)_

    The ISO 639-1 code for the language in which AWS provides support. AWS 
    Support currently supports English ("en") and Japanese ("ja"). Language 
    parameters must be passed explicitly for operations that take them.

- **Returns: result from API call**

## DescribeTrustedAdvisorCheckSummaries( )

Returns the summaries of the results of the Trusted Advisor checks that 
have the specified check IDs. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.

The response contains an array of TrustedAdvisorCheckSummary objects.

Refer to [http://docs.aws.amazon.com/awssupport/latest/APIReference/API\_DescribeTrustedAdvisorCheckSummaries.html](http://docs.aws.amazon.com/awssupport/latest/APIReference/API_DescribeTrustedAdvisorCheckSummaries.html)

- **Parameters**
- checkIds **(required array)**

    The IDs of the Trusted Advisor checks.

- **Returns: result from API call**

## DescribeTrustedAdvisorChecks( )

Returns information about all available Trusted Advisor checks, 
including name, ID, category, description, and metadata. You must 
specify a language code; English ("en") and Japanese ("ja") are 
currently supported. 

The response contains a TrustedAdvisorCheckDescription for each check.

Refer to [http://docs.aws.amazon.com/awssupport/latest/APIReference/API\_DescribeTrustedAdvisorChecks.html](http://docs.aws.amazon.com/awssupport/latest/APIReference/API_DescribeTrustedAdvisorChecks.html)

- **Parameters**
- Language _(optional string)_

    The ISO 639-1 code for the language in which AWS provides support. AWS 
    Support currently supports English ("en") and Japanese ("ja"). Language 
    parameters must be passed explicitly for operations that take them.

- **Returns: result from API call**

## RefreshTrustedAdvisorCheck( )

Requests a refresh of the Trusted Advisor check that has the specified 
check ID. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.

The response contains a TrustedAdvisorCheckRefreshStatus object, which contains these fields:

    Status. The refresh status of the check: "none", "enqueued", "processing", "success", or "abandoned".
    MillisUntilNextRefreshable. The amount of time, in milliseconds, until the check is eligible for refresh.
    CheckId. The unique identifier for the check.

Refer to [http://docs.aws.amazon.com/awssupport/latest/APIReference/API\_RefreshTrustedAdvisorCheck.html](http://docs.aws.amazon.com/awssupport/latest/APIReference/API_RefreshTrustedAdvisorCheck.html)

- **Parameters**
- checkId **(required string)**

    The ID of the Trusted Advisor check.

- **Returns: result from API call**

## ResolveCase( )

Takes a CaseId and returns the initial state of the case along with 
the state of the case after the call to ResolveCase completed.

Refer to [http://docs.aws.amazon.com/awssupport/latest/APIReference/API\_ResolveCase.html](http://docs.aws.amazon.com/awssupport/latest/APIReference/API_ResolveCase.html)

- **Parameters**
- caseId **(required string)**

    CaseId
    The AWS Support case ID requested or returned in the call. The case ID 
    is an alphanumeric string formatted as shown in this example: 
       case-12345678910-2013-c4c1d2bf33c5cf47

- **Returns: result from API call**

# AUTHOR

Matthew Cox, `<mcox at cpan.org>`

# BUGS

Please report any bugs or feature requests to `bug-webservice-amazon-support at rt.cpan.org`, or through
the web interface at [http://rt.cpan.org/NoAuth/ReportBug.html?Queue=WebService-Amazon-Support](http://rt.cpan.org/NoAuth/ReportBug.html?Queue=WebService-Amazon-Support).  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc WebService::Amazon::Support

You can also look for information at:

- RT: CPAN's request tracker (report bugs here)

    [http://rt.cpan.org/NoAuth/Bugs.html?Dist=WebService-Amazon-Support](http://rt.cpan.org/NoAuth/Bugs.html?Dist=WebService-Amazon-Support)

- AnnoCPAN: Annotated CPAN documentation

    [http://annocpan.org/dist/WebService-Amazon-Support](http://annocpan.org/dist/WebService-Amazon-Support)

- CPAN Ratings

    [http://cpanratings.perl.org/d/WebService-Amazon-Support](http://cpanratings.perl.org/d/WebService-Amazon-Support)

- Search CPAN

    [http://search.cpan.org/dist/WebService-Amazon-Support/](http://search.cpan.org/dist/WebService-Amazon-Support/)

# ACKNOWLEDGEMENTS

# SEE ALSO

perl(1), [AWS::Signature4](https://metacpan.org/pod/AWS::Signature4), [Carp](https://metacpan.org/pod/Carp), [HTTP::Common::Response](https://metacpan.org/pod/HTTP::Common::Response), [JSON](https://metacpan.org/pod/JSON), [LWP](https://metacpan.org/pod/LWP), [Params::Validate](https://metacpan.org/pod/Params::Validate), [WebService::Simple](https://metacpan.org/pod/WebService::Simple)

# LICENSE AND COPYRIGHT

Copyright 2015 Matthew Cox.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

[http://www.perlfoundation.org/artistic\_license\_2\_0](http://www.perlfoundation.org/artistic_license_2_0)

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
