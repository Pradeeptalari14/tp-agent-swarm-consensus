# Multi-Agent Swarm RAFT Consensus Studio

[![CI SRE Validation](https://github.com/Pradeeptalari14/tp-agent-swarm-consensus/actions/workflows/sre-validation.yml/badge.svg)](https://github.com/Pradeeptalari14/tp-agent-swarm-consensus/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform: Distributed Systems & Governance](https://img.shields.io/badge/Platform-RAFT%20%7C%20Multi--Agent-amber.svg)](https://talaripradeep.info)

Production implementation of **Byzantine-Resilient Multi-Agent Swarm Governance** with distributed RAFT consensus and verifiable quorum execution gates.

![Swarm Architecture Flow](docs/swarm_architecture_flow.png)

## Key Technical Highlights
- **Decentralized RAFT Consensus:** Enables autonomous agent clusters to elect quorum leaders and replicate action logs without central orchestrators.
- **Irreversible Action Quorum Gate:** Enforces >66% cryptographic peer approval before executing database migrations or cluster rollbacks.
- **Zero Single-Point-of-Failure:** Recovers automatically from node dropouts and splits within milliseconds.
- **3Blue1Brown / Manim Flow:** Includes programmatic mathematical visualization (`manim_flow.py`) of RAFT consensus terms.

## Quickstart
```bash
git clone https://github.com/Pradeeptalari14/tp-agent-swarm-consensus.git
cd tp-agent-swarm-consensus
bash scripts/validate.sh
```
