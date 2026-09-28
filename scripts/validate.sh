#!/usr/bin/env bash
set -eo pipefail

echo "=========================================================="
echo "⚡ Validating Multi-Agent Swarm RAFT Consensus Engine"
echo "=========================================================="

python3 -m py_compile raft_node_agent.py
echo "✓ raft_node_agent.py syntax validated."

python3 -m py_compile manim_flow.py
echo "✓ manim_flow.py syntax validated."

python3 -c "
from raft_node_agent import RaftAgentNode
node = RaftAgentNode('test-node', ['peer-1', 'peer-2'])
assert node.start_election() == True, 'Leader election failed'
assert node.propose_action('test-act', 'TEST_PAYLOAD') == True, 'Proposal commit failed'
print('✓ Unit verification passed: RAFT agent election & commit clean.')
"

echo "=========================================================="
echo "✅ All SRE validation checks passed successfully!"
echo "=========================================================="
