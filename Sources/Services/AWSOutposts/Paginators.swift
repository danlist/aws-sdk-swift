// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension OutpostsClient {
    /// Paginate over `[GetOutpostInstanceTypesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetOutpostInstanceTypesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetOutpostInstanceTypesOutputResponse`
    public func getOutpostInstanceTypesPaginated(input: GetOutpostInstanceTypesInput) -> ClientRuntime.PaginatorSequence<GetOutpostInstanceTypesInput, GetOutpostInstanceTypesOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetOutpostInstanceTypesInput, GetOutpostInstanceTypesOutputResponse>(input: input, inputKey: \GetOutpostInstanceTypesInput.nextToken, outputKey: \GetOutpostInstanceTypesOutputResponse.nextToken, paginationFunction: self.getOutpostInstanceTypes(input:))
    }
}

extension GetOutpostInstanceTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetOutpostInstanceTypesInput {
        return GetOutpostInstanceTypesInput(
            maxResults: self.maxResults,
            nextToken: token,
            outpostId: self.outpostId
        )}
}
extension OutpostsClient {
    /// Paginate over `[ListAssetsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAssetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAssetsOutputResponse`
    public func listAssetsPaginated(input: ListAssetsInput) -> ClientRuntime.PaginatorSequence<ListAssetsInput, ListAssetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAssetsInput, ListAssetsOutputResponse>(input: input, inputKey: \ListAssetsInput.nextToken, outputKey: \ListAssetsOutputResponse.nextToken, paginationFunction: self.listAssets(input:))
    }
}

extension ListAssetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAssetsInput {
        return ListAssetsInput(
            hostIdFilter: self.hostIdFilter,
            maxResults: self.maxResults,
            nextToken: token,
            outpostIdentifier: self.outpostIdentifier,
            statusFilter: self.statusFilter
        )}
}
extension OutpostsClient {
    /// Paginate over `[ListCatalogItemsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCatalogItemsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCatalogItemsOutputResponse`
    public func listCatalogItemsPaginated(input: ListCatalogItemsInput) -> ClientRuntime.PaginatorSequence<ListCatalogItemsInput, ListCatalogItemsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCatalogItemsInput, ListCatalogItemsOutputResponse>(input: input, inputKey: \ListCatalogItemsInput.nextToken, outputKey: \ListCatalogItemsOutputResponse.nextToken, paginationFunction: self.listCatalogItems(input:))
    }
}

extension ListCatalogItemsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCatalogItemsInput {
        return ListCatalogItemsInput(
            ec2FamilyFilter: self.ec2FamilyFilter,
            itemClassFilter: self.itemClassFilter,
            maxResults: self.maxResults,
            nextToken: token,
            supportedStorageFilter: self.supportedStorageFilter
        )}
}
extension OutpostsClient {
    /// Paginate over `[ListOrdersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOrdersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOrdersOutputResponse`
    public func listOrdersPaginated(input: ListOrdersInput) -> ClientRuntime.PaginatorSequence<ListOrdersInput, ListOrdersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListOrdersInput, ListOrdersOutputResponse>(input: input, inputKey: \ListOrdersInput.nextToken, outputKey: \ListOrdersOutputResponse.nextToken, paginationFunction: self.listOrders(input:))
    }
}

extension ListOrdersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOrdersInput {
        return ListOrdersInput(
            maxResults: self.maxResults,
            nextToken: token,
            outpostIdentifierFilter: self.outpostIdentifierFilter
        )}
}
extension OutpostsClient {
    /// Paginate over `[ListOutpostsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOutpostsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOutpostsOutputResponse`
    public func listOutpostsPaginated(input: ListOutpostsInput) -> ClientRuntime.PaginatorSequence<ListOutpostsInput, ListOutpostsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListOutpostsInput, ListOutpostsOutputResponse>(input: input, inputKey: \ListOutpostsInput.nextToken, outputKey: \ListOutpostsOutputResponse.nextToken, paginationFunction: self.listOutposts(input:))
    }
}

extension ListOutpostsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOutpostsInput {
        return ListOutpostsInput(
            availabilityZoneFilter: self.availabilityZoneFilter,
            availabilityZoneIdFilter: self.availabilityZoneIdFilter,
            lifeCycleStatusFilter: self.lifeCycleStatusFilter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OutpostsClient {
    /// Paginate over `[ListSitesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSitesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSitesOutputResponse`
    public func listSitesPaginated(input: ListSitesInput) -> ClientRuntime.PaginatorSequence<ListSitesInput, ListSitesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSitesInput, ListSitesOutputResponse>(input: input, inputKey: \ListSitesInput.nextToken, outputKey: \ListSitesOutputResponse.nextToken, paginationFunction: self.listSites(input:))
    }
}

extension ListSitesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSitesInput {
        return ListSitesInput(
            maxResults: self.maxResults,
            nextToken: token,
            operatingAddressCityFilter: self.operatingAddressCityFilter,
            operatingAddressCountryCodeFilter: self.operatingAddressCountryCodeFilter,
            operatingAddressStateOrRegionFilter: self.operatingAddressStateOrRegionFilter
        )}
}