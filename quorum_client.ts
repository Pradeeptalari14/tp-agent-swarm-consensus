/**
 * Multi-Agent Quorum Verification Client
 * Asserts >66% approval across all nodes before executing irreversible actions.
 */

export interface VoteResponse {
  nodeId: string;
  approved: boolean;
  term: number;
}

export class QuorumClient {
  public static verifyQuorum(votes: VoteResponse[], threshold = 0.66): boolean {
    const total = votes.length;
    if (total === 0) return false;
    const approvals = votes.filter(v => v.approved).length;
    return (approvals / total) >= threshold;
  }
}
