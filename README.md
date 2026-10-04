# AI Hypothesis-Verification Nano Cycle™

> A mathematical and architectural critique of monolithic LLM generation, formalizing the sub-second hypothesis-verification engine driven by compiled languages, test harnesses, and UNIX philosophy.

This repository contains the LuaLaTeX source manuscript for the formal monograph:
**"AI Hypothesis-Verification Nano Cycle™: Taming Generative Entropy via UNIX Architecture and Sub-Second TDD"**.

---

## Abstract

Monolithic code generation via Large Language Models inherently leads to a state space explosion and severe hallucination cascades. Probabilistic autoregression optimizes for plausible tokens rather than deterministic invariants.

The **AI Hypothesis-Verification Nano Cycle™ (AHV-NC)** inverts the conventional macro-prompting paradigm:
1. **Human defines architectural boundaries** (process isolation, strict typing, standard streams).
2. **AI generates atomic hypotheses** within constrained units.
3. **The toolchain deterministically verifies** the hypothesis in sub-second feedback loops (compiler diagnostics, process exit codes).
4. **Valid states are immediately sealed** into the Single Source of Truth (SSOT).

---

## Building the Book

The document is written in LuaLaTeX and supports dual-language compilation (English and Japanese) via conditional TeX branching.

### Prerequisites

* LuaLaTeX (`texlive-luatex` / `texlive-langjapanese` / `texlive-fontsrecommended`)
* `latexmk`
* `make`

### Build Targets

```bash
# Build both Japanese and English editions
make

# Build Japanese edition only
make ja
# Output: build/ai_hypothesis_verification_nano_cycle_ja.pdf

# Build English edition only
make en
# Output: build/ai_hypothesis_verification_nano_cycle_en.pdf

# Clean build artifacts
make clean

```

---

## Repository Structure

```text
.
├── Makefile
├── LICENSE
├── README.md
└── src/
    ├── ai_hypothesis_verification_nano_cycle.tex   # Master source with \ifja switch
    ├── chapters/                                   # Split chapters
    └── preamble/                                   # Preamble macros & styling

```

---

## Author & Philosophy

* **Organization:** [Section 9](https://www.google.com/search?q=https://github.com/xsigil)
* **License:** MIT License
