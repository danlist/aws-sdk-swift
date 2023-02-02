// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Route53ResolverClient {
    /// Paginate over `[ListFirewallConfigsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFirewallConfigsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFirewallConfigsOutputResponse`
    public func listFirewallConfigsPaginated(input: ListFirewallConfigsInput) -> ClientRuntime.PaginatorSequence<ListFirewallConfigsInput, ListFirewallConfigsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFirewallConfigsInput, ListFirewallConfigsOutputResponse>(input: input, inputKey: \ListFirewallConfigsInput.nextToken, outputKey: \ListFirewallConfigsOutputResponse.nextToken, paginationFunction: self.listFirewallConfigs(input:))
    }
}

extension ListFirewallConfigsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFirewallConfigsInput {
        return ListFirewallConfigsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListFirewallDomainListsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFirewallDomainListsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFirewallDomainListsOutputResponse`
    public func listFirewallDomainListsPaginated(input: ListFirewallDomainListsInput) -> ClientRuntime.PaginatorSequence<ListFirewallDomainListsInput, ListFirewallDomainListsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFirewallDomainListsInput, ListFirewallDomainListsOutputResponse>(input: input, inputKey: \ListFirewallDomainListsInput.nextToken, outputKey: \ListFirewallDomainListsOutputResponse.nextToken, paginationFunction: self.listFirewallDomainLists(input:))
    }
}

extension ListFirewallDomainListsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFirewallDomainListsInput {
        return ListFirewallDomainListsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListFirewallDomainsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFirewallDomainsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFirewallDomainsOutputResponse`
    public func listFirewallDomainsPaginated(input: ListFirewallDomainsInput) -> ClientRuntime.PaginatorSequence<ListFirewallDomainsInput, ListFirewallDomainsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFirewallDomainsInput, ListFirewallDomainsOutputResponse>(input: input, inputKey: \ListFirewallDomainsInput.nextToken, outputKey: \ListFirewallDomainsOutputResponse.nextToken, paginationFunction: self.listFirewallDomains(input:))
    }
}

extension ListFirewallDomainsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFirewallDomainsInput {
        return ListFirewallDomainsInput(
            firewallDomainListId: self.firewallDomainListId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListFirewallRuleGroupAssociationsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFirewallRuleGroupAssociationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFirewallRuleGroupAssociationsOutputResponse`
    public func listFirewallRuleGroupAssociationsPaginated(input: ListFirewallRuleGroupAssociationsInput) -> ClientRuntime.PaginatorSequence<ListFirewallRuleGroupAssociationsInput, ListFirewallRuleGroupAssociationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFirewallRuleGroupAssociationsInput, ListFirewallRuleGroupAssociationsOutputResponse>(input: input, inputKey: \ListFirewallRuleGroupAssociationsInput.nextToken, outputKey: \ListFirewallRuleGroupAssociationsOutputResponse.nextToken, paginationFunction: self.listFirewallRuleGroupAssociations(input:))
    }
}

extension ListFirewallRuleGroupAssociationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFirewallRuleGroupAssociationsInput {
        return ListFirewallRuleGroupAssociationsInput(
            firewallRuleGroupId: self.firewallRuleGroupId,
            maxResults: self.maxResults,
            nextToken: token,
            priority: self.priority,
            status: self.status,
            vpcId: self.vpcId
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListFirewallRuleGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFirewallRuleGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFirewallRuleGroupsOutputResponse`
    public func listFirewallRuleGroupsPaginated(input: ListFirewallRuleGroupsInput) -> ClientRuntime.PaginatorSequence<ListFirewallRuleGroupsInput, ListFirewallRuleGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFirewallRuleGroupsInput, ListFirewallRuleGroupsOutputResponse>(input: input, inputKey: \ListFirewallRuleGroupsInput.nextToken, outputKey: \ListFirewallRuleGroupsOutputResponse.nextToken, paginationFunction: self.listFirewallRuleGroups(input:))
    }
}

extension ListFirewallRuleGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFirewallRuleGroupsInput {
        return ListFirewallRuleGroupsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListFirewallRulesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFirewallRulesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFirewallRulesOutputResponse`
    public func listFirewallRulesPaginated(input: ListFirewallRulesInput) -> ClientRuntime.PaginatorSequence<ListFirewallRulesInput, ListFirewallRulesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFirewallRulesInput, ListFirewallRulesOutputResponse>(input: input, inputKey: \ListFirewallRulesInput.nextToken, outputKey: \ListFirewallRulesOutputResponse.nextToken, paginationFunction: self.listFirewallRules(input:))
    }
}

extension ListFirewallRulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFirewallRulesInput {
        return ListFirewallRulesInput(
            action: self.action,
            firewallRuleGroupId: self.firewallRuleGroupId,
            maxResults: self.maxResults,
            nextToken: token,
            priority: self.priority
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListResolverConfigsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResolverConfigsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResolverConfigsOutputResponse`
    public func listResolverConfigsPaginated(input: ListResolverConfigsInput) -> ClientRuntime.PaginatorSequence<ListResolverConfigsInput, ListResolverConfigsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListResolverConfigsInput, ListResolverConfigsOutputResponse>(input: input, inputKey: \ListResolverConfigsInput.nextToken, outputKey: \ListResolverConfigsOutputResponse.nextToken, paginationFunction: self.listResolverConfigs(input:))
    }
}

extension ListResolverConfigsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResolverConfigsInput {
        return ListResolverConfigsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListResolverDnssecConfigsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResolverDnssecConfigsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResolverDnssecConfigsOutputResponse`
    public func listResolverDnssecConfigsPaginated(input: ListResolverDnssecConfigsInput) -> ClientRuntime.PaginatorSequence<ListResolverDnssecConfigsInput, ListResolverDnssecConfigsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListResolverDnssecConfigsInput, ListResolverDnssecConfigsOutputResponse>(input: input, inputKey: \ListResolverDnssecConfigsInput.nextToken, outputKey: \ListResolverDnssecConfigsOutputResponse.nextToken, paginationFunction: self.listResolverDnssecConfigs(input:))
    }
}

extension ListResolverDnssecConfigsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResolverDnssecConfigsInput {
        return ListResolverDnssecConfigsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListResolverEndpointIpAddressesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResolverEndpointIpAddressesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResolverEndpointIpAddressesOutputResponse`
    public func listResolverEndpointIpAddressesPaginated(input: ListResolverEndpointIpAddressesInput) -> ClientRuntime.PaginatorSequence<ListResolverEndpointIpAddressesInput, ListResolverEndpointIpAddressesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListResolverEndpointIpAddressesInput, ListResolverEndpointIpAddressesOutputResponse>(input: input, inputKey: \ListResolverEndpointIpAddressesInput.nextToken, outputKey: \ListResolverEndpointIpAddressesOutputResponse.nextToken, paginationFunction: self.listResolverEndpointIpAddresses(input:))
    }
}

extension ListResolverEndpointIpAddressesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResolverEndpointIpAddressesInput {
        return ListResolverEndpointIpAddressesInput(
            maxResults: self.maxResults,
            nextToken: token,
            resolverEndpointId: self.resolverEndpointId
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListResolverEndpointsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResolverEndpointsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResolverEndpointsOutputResponse`
    public func listResolverEndpointsPaginated(input: ListResolverEndpointsInput) -> ClientRuntime.PaginatorSequence<ListResolverEndpointsInput, ListResolverEndpointsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListResolverEndpointsInput, ListResolverEndpointsOutputResponse>(input: input, inputKey: \ListResolverEndpointsInput.nextToken, outputKey: \ListResolverEndpointsOutputResponse.nextToken, paginationFunction: self.listResolverEndpoints(input:))
    }
}

extension ListResolverEndpointsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResolverEndpointsInput {
        return ListResolverEndpointsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListResolverQueryLogConfigAssociationsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResolverQueryLogConfigAssociationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResolverQueryLogConfigAssociationsOutputResponse`
    public func listResolverQueryLogConfigAssociationsPaginated(input: ListResolverQueryLogConfigAssociationsInput) -> ClientRuntime.PaginatorSequence<ListResolverQueryLogConfigAssociationsInput, ListResolverQueryLogConfigAssociationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListResolverQueryLogConfigAssociationsInput, ListResolverQueryLogConfigAssociationsOutputResponse>(input: input, inputKey: \ListResolverQueryLogConfigAssociationsInput.nextToken, outputKey: \ListResolverQueryLogConfigAssociationsOutputResponse.nextToken, paginationFunction: self.listResolverQueryLogConfigAssociations(input:))
    }
}

extension ListResolverQueryLogConfigAssociationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResolverQueryLogConfigAssociationsInput {
        return ListResolverQueryLogConfigAssociationsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListResolverQueryLogConfigsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResolverQueryLogConfigsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResolverQueryLogConfigsOutputResponse`
    public func listResolverQueryLogConfigsPaginated(input: ListResolverQueryLogConfigsInput) -> ClientRuntime.PaginatorSequence<ListResolverQueryLogConfigsInput, ListResolverQueryLogConfigsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListResolverQueryLogConfigsInput, ListResolverQueryLogConfigsOutputResponse>(input: input, inputKey: \ListResolverQueryLogConfigsInput.nextToken, outputKey: \ListResolverQueryLogConfigsOutputResponse.nextToken, paginationFunction: self.listResolverQueryLogConfigs(input:))
    }
}

extension ListResolverQueryLogConfigsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResolverQueryLogConfigsInput {
        return ListResolverQueryLogConfigsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListResolverRuleAssociationsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResolverRuleAssociationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResolverRuleAssociationsOutputResponse`
    public func listResolverRuleAssociationsPaginated(input: ListResolverRuleAssociationsInput) -> ClientRuntime.PaginatorSequence<ListResolverRuleAssociationsInput, ListResolverRuleAssociationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListResolverRuleAssociationsInput, ListResolverRuleAssociationsOutputResponse>(input: input, inputKey: \ListResolverRuleAssociationsInput.nextToken, outputKey: \ListResolverRuleAssociationsOutputResponse.nextToken, paginationFunction: self.listResolverRuleAssociations(input:))
    }
}

extension ListResolverRuleAssociationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResolverRuleAssociationsInput {
        return ListResolverRuleAssociationsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListResolverRulesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResolverRulesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResolverRulesOutputResponse`
    public func listResolverRulesPaginated(input: ListResolverRulesInput) -> ClientRuntime.PaginatorSequence<ListResolverRulesInput, ListResolverRulesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListResolverRulesInput, ListResolverRulesOutputResponse>(input: input, inputKey: \ListResolverRulesInput.nextToken, outputKey: \ListResolverRulesOutputResponse.nextToken, paginationFunction: self.listResolverRules(input:))
    }
}

extension ListResolverRulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResolverRulesInput {
        return ListResolverRulesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension Route53ResolverClient {
    /// Paginate over `[ListTagsForResourceOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTagsForResourceInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutputResponse`
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse>(input: input, inputKey: \ListTagsForResourceInput.nextToken, outputKey: \ListTagsForResourceOutputResponse.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}