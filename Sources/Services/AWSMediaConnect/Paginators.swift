// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MediaConnectClient {
    /// Paginate over `[ListBridgesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBridgesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBridgesOutputResponse`
    public func listBridgesPaginated(input: ListBridgesInput) -> ClientRuntime.PaginatorSequence<ListBridgesInput, ListBridgesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBridgesInput, ListBridgesOutputResponse>(input: input, inputKey: \ListBridgesInput.nextToken, outputKey: \ListBridgesOutputResponse.nextToken, paginationFunction: self.listBridges(input:))
    }
}

extension ListBridgesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBridgesInput {
        return ListBridgesInput(
            filterArn: self.filterArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListBridgesInput, Output == ListBridgesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listBridgesPaginated`
    /// to access the nested member `[MediaConnectClientTypes.ListedBridge]`
    /// - Returns: `[MediaConnectClientTypes.ListedBridge]`
    public func bridges() async throws -> [MediaConnectClientTypes.ListedBridge] {
        return try await self.asyncCompactMap { item in item.bridges }
    }
}
extension MediaConnectClient {
    /// Paginate over `[ListEntitlementsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEntitlementsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEntitlementsOutputResponse`
    public func listEntitlementsPaginated(input: ListEntitlementsInput) -> ClientRuntime.PaginatorSequence<ListEntitlementsInput, ListEntitlementsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEntitlementsInput, ListEntitlementsOutputResponse>(input: input, inputKey: \ListEntitlementsInput.nextToken, outputKey: \ListEntitlementsOutputResponse.nextToken, paginationFunction: self.listEntitlements(input:))
    }
}

extension ListEntitlementsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEntitlementsInput {
        return ListEntitlementsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListEntitlementsInput, Output == ListEntitlementsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listEntitlementsPaginated`
    /// to access the nested member `[MediaConnectClientTypes.ListedEntitlement]`
    /// - Returns: `[MediaConnectClientTypes.ListedEntitlement]`
    public func entitlements() async throws -> [MediaConnectClientTypes.ListedEntitlement] {
        return try await self.asyncCompactMap { item in item.entitlements }
    }
}
extension MediaConnectClient {
    /// Paginate over `[ListFlowsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFlowsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFlowsOutputResponse`
    public func listFlowsPaginated(input: ListFlowsInput) -> ClientRuntime.PaginatorSequence<ListFlowsInput, ListFlowsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFlowsInput, ListFlowsOutputResponse>(input: input, inputKey: \ListFlowsInput.nextToken, outputKey: \ListFlowsOutputResponse.nextToken, paginationFunction: self.listFlows(input:))
    }
}

extension ListFlowsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFlowsInput {
        return ListFlowsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListFlowsInput, Output == ListFlowsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listFlowsPaginated`
    /// to access the nested member `[MediaConnectClientTypes.ListedFlow]`
    /// - Returns: `[MediaConnectClientTypes.ListedFlow]`
    public func flows() async throws -> [MediaConnectClientTypes.ListedFlow] {
        return try await self.asyncCompactMap { item in item.flows }
    }
}
extension MediaConnectClient {
    /// Paginate over `[ListGatewayInstancesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGatewayInstancesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGatewayInstancesOutputResponse`
    public func listGatewayInstancesPaginated(input: ListGatewayInstancesInput) -> ClientRuntime.PaginatorSequence<ListGatewayInstancesInput, ListGatewayInstancesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListGatewayInstancesInput, ListGatewayInstancesOutputResponse>(input: input, inputKey: \ListGatewayInstancesInput.nextToken, outputKey: \ListGatewayInstancesOutputResponse.nextToken, paginationFunction: self.listGatewayInstances(input:))
    }
}

extension ListGatewayInstancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGatewayInstancesInput {
        return ListGatewayInstancesInput(
            filterArn: self.filterArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListGatewayInstancesInput, Output == ListGatewayInstancesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listGatewayInstancesPaginated`
    /// to access the nested member `[MediaConnectClientTypes.ListedGatewayInstance]`
    /// - Returns: `[MediaConnectClientTypes.ListedGatewayInstance]`
    public func instances() async throws -> [MediaConnectClientTypes.ListedGatewayInstance] {
        return try await self.asyncCompactMap { item in item.instances }
    }
}
extension MediaConnectClient {
    /// Paginate over `[ListGatewaysOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGatewaysInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGatewaysOutputResponse`
    public func listGatewaysPaginated(input: ListGatewaysInput) -> ClientRuntime.PaginatorSequence<ListGatewaysInput, ListGatewaysOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListGatewaysInput, ListGatewaysOutputResponse>(input: input, inputKey: \ListGatewaysInput.nextToken, outputKey: \ListGatewaysOutputResponse.nextToken, paginationFunction: self.listGateways(input:))
    }
}

extension ListGatewaysInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGatewaysInput {
        return ListGatewaysInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListGatewaysInput, Output == ListGatewaysOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listGatewaysPaginated`
    /// to access the nested member `[MediaConnectClientTypes.ListedGateway]`
    /// - Returns: `[MediaConnectClientTypes.ListedGateway]`
    public func gateways() async throws -> [MediaConnectClientTypes.ListedGateway] {
        return try await self.asyncCompactMap { item in item.gateways }
    }
}
extension MediaConnectClient {
    /// Paginate over `[ListOfferingsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOfferingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOfferingsOutputResponse`
    public func listOfferingsPaginated(input: ListOfferingsInput) -> ClientRuntime.PaginatorSequence<ListOfferingsInput, ListOfferingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListOfferingsInput, ListOfferingsOutputResponse>(input: input, inputKey: \ListOfferingsInput.nextToken, outputKey: \ListOfferingsOutputResponse.nextToken, paginationFunction: self.listOfferings(input:))
    }
}

extension ListOfferingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOfferingsInput {
        return ListOfferingsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListOfferingsInput, Output == ListOfferingsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listOfferingsPaginated`
    /// to access the nested member `[MediaConnectClientTypes.Offering]`
    /// - Returns: `[MediaConnectClientTypes.Offering]`
    public func offerings() async throws -> [MediaConnectClientTypes.Offering] {
        return try await self.asyncCompactMap { item in item.offerings }
    }
}
extension MediaConnectClient {
    /// Paginate over `[ListReservationsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListReservationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListReservationsOutputResponse`
    public func listReservationsPaginated(input: ListReservationsInput) -> ClientRuntime.PaginatorSequence<ListReservationsInput, ListReservationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListReservationsInput, ListReservationsOutputResponse>(input: input, inputKey: \ListReservationsInput.nextToken, outputKey: \ListReservationsOutputResponse.nextToken, paginationFunction: self.listReservations(input:))
    }
}

extension ListReservationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListReservationsInput {
        return ListReservationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListReservationsInput, Output == ListReservationsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listReservationsPaginated`
    /// to access the nested member `[MediaConnectClientTypes.Reservation]`
    /// - Returns: `[MediaConnectClientTypes.Reservation]`
    public func reservations() async throws -> [MediaConnectClientTypes.Reservation] {
        return try await self.asyncCompactMap { item in item.reservations }
    }
}
