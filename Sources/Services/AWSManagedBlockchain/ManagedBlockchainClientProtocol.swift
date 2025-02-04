// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Amazon Managed Blockchain is a fully managed service for creating and managing blockchain networks using open-source frameworks. Blockchain allows you to build applications where multiple parties can securely and transparently run transactions and share data without the need for a trusted, central authority. Managed Blockchain supports the Hyperledger Fabric and Ethereum open-source frameworks. Because of fundamental differences between the frameworks, some API actions or data types may only apply in the context of one framework and not the other. For example, actions related to Hyperledger Fabric network members such as CreateMember and DeleteMember don't apply to Ethereum. The description for each action indicates the framework or frameworks to which it applies. Data types and properties that apply only in the context of a particular framework are similarly indicated.
public protocol ManagedBlockchainClientProtocol {
    /// Creates a new accessor for use with Managed Blockchain Ethereum nodes. An accessor contains information required for token based access to your Ethereum nodes.
    func createAccessor(input: CreateAccessorInput) async throws -> CreateAccessorOutputResponse
    /// Creates a member within a Managed Blockchain network. Applies only to Hyperledger Fabric.
    func createMember(input: CreateMemberInput) async throws -> CreateMemberOutputResponse
    /// Creates a new blockchain network using Amazon Managed Blockchain. Applies only to Hyperledger Fabric.
    func createNetwork(input: CreateNetworkInput) async throws -> CreateNetworkOutputResponse
    /// Creates a node on the specified blockchain network. Applies to Hyperledger Fabric and Ethereum.
    func createNode(input: CreateNodeInput) async throws -> CreateNodeOutputResponse
    /// Creates a proposal for a change to the network that other members of the network can vote on, for example, a proposal to add a new member to the network. Any member can create a proposal. Applies only to Hyperledger Fabric.
    func createProposal(input: CreateProposalInput) async throws -> CreateProposalOutputResponse
    /// Deletes an accessor that your Amazon Web Services account owns. An accessor object is a container that has the information required for token based access to your Ethereum nodes including, the BILLING_TOKEN. After an accessor is deleted, the status of the accessor changes from AVAILABLE to PENDING_DELETION. An accessor in the PENDING_DELETION state can’t be used for new WebSocket requests or HTTP requests. However, WebSocket connections that were initiated while the accessor was in the AVAILABLE state remain open until they expire (up to 2 hours).
    func deleteAccessor(input: DeleteAccessorInput) async throws -> DeleteAccessorOutputResponse
    /// Deletes a member. Deleting a member removes the member and all associated resources from the network. DeleteMember can only be called for a specified MemberId if the principal performing the action is associated with the Amazon Web Services account that owns the member. In all other cases, the DeleteMember action is carried out as the result of an approved proposal to remove a member. If MemberId is the last member in a network specified by the last Amazon Web Services account, the network is deleted also. Applies only to Hyperledger Fabric.
    func deleteMember(input: DeleteMemberInput) async throws -> DeleteMemberOutputResponse
    /// Deletes a node that your Amazon Web Services account owns. All data on the node is lost and cannot be recovered. Applies to Hyperledger Fabric and Ethereum.
    func deleteNode(input: DeleteNodeInput) async throws -> DeleteNodeOutputResponse
    /// Returns detailed information about an accessor. An accessor object is a container that has the information required for token based access to your Ethereum nodes.
    func getAccessor(input: GetAccessorInput) async throws -> GetAccessorOutputResponse
    /// Returns detailed information about a member. Applies only to Hyperledger Fabric.
    func getMember(input: GetMemberInput) async throws -> GetMemberOutputResponse
    /// Returns detailed information about a network. Applies to Hyperledger Fabric and Ethereum.
    func getNetwork(input: GetNetworkInput) async throws -> GetNetworkOutputResponse
    /// Returns detailed information about a node. Applies to Hyperledger Fabric and Ethereum.
    func getNode(input: GetNodeInput) async throws -> GetNodeOutputResponse
    /// Returns detailed information about a proposal. Applies only to Hyperledger Fabric.
    func getProposal(input: GetProposalInput) async throws -> GetProposalOutputResponse
    /// Returns a list of the accessors and their properties. Accessor objects are containers that have the information required for token based access to your Ethereum nodes.
    func listAccessors(input: ListAccessorsInput) async throws -> ListAccessorsOutputResponse
    /// Returns a list of all invitations for the current Amazon Web Services account. Applies only to Hyperledger Fabric.
    func listInvitations(input: ListInvitationsInput) async throws -> ListInvitationsOutputResponse
    /// Returns a list of the members in a network and properties of their configurations. Applies only to Hyperledger Fabric.
    func listMembers(input: ListMembersInput) async throws -> ListMembersOutputResponse
    /// Returns information about the networks in which the current Amazon Web Services account participates. Applies to Hyperledger Fabric and Ethereum.
    func listNetworks(input: ListNetworksInput) async throws -> ListNetworksOutputResponse
    /// Returns information about the nodes within a network. Applies to Hyperledger Fabric and Ethereum.
    func listNodes(input: ListNodesInput) async throws -> ListNodesOutputResponse
    /// Returns a list of proposals for the network. Applies only to Hyperledger Fabric.
    func listProposals(input: ListProposalsInput) async throws -> ListProposalsOutputResponse
    /// Returns the list of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote. Applies only to Hyperledger Fabric.
    func listProposalVotes(input: ListProposalVotesInput) async throws -> ListProposalVotesOutputResponse
    /// Returns a list of tags for the specified resource. Each tag consists of a key and optional value. For more information about tags, see [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html) in the Amazon Managed Blockchain Ethereum Developer Guide, or [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html) in the Amazon Managed Blockchain Hyperledger Fabric Developer Guide.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Rejects an invitation to join a network. This action can be called by a principal in an Amazon Web Services account that has received an invitation to create a member and join a network. Applies only to Hyperledger Fabric.
    func rejectInvitation(input: RejectInvitationInput) async throws -> RejectInvitationOutputResponse
    /// Adds or overwrites the specified tags for the specified Amazon Managed Blockchain resource. Each tag consists of a key and optional value. When you specify a tag key that already exists, the tag value is overwritten with the new value. Use UntagResource to remove tag keys. A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error. For more information about tags, see [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html) in the Amazon Managed Blockchain Ethereum Developer Guide, or [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html) in the Amazon Managed Blockchain Hyperledger Fabric Developer Guide.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the specified tags from the Amazon Managed Blockchain resource. For more information about tags, see [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html) in the Amazon Managed Blockchain Ethereum Developer Guide, or [Tagging Resources](https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html) in the Amazon Managed Blockchain Hyperledger Fabric Developer Guide.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a member configuration with new parameters. Applies only to Hyperledger Fabric.
    func updateMember(input: UpdateMemberInput) async throws -> UpdateMemberOutputResponse
    /// Updates a node configuration with new parameters. Applies only to Hyperledger Fabric.
    func updateNode(input: UpdateNodeInput) async throws -> UpdateNodeOutputResponse
    /// Casts a vote for a specified ProposalId on behalf of a member. The member to vote as, specified by VoterMemberId, must be in the same Amazon Web Services account as the principal that calls the action. Applies only to Hyperledger Fabric.
    func voteOnProposal(input: VoteOnProposalInput) async throws -> VoteOnProposalOutputResponse
}

public protocol ManagedBlockchainClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum ManagedBlockchainClientTypes {}
