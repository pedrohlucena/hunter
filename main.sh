AI_MODEL="claude-opus-4-6"
REASONING_EFFORT="max"

claude \
  --model "$AI_MODEL" \
  --effort "$REASONING_EFFORT" \
  --system-prompt "$(cat "./system-prompt.md")" \
  "$(cat "./user-prompt.md")"