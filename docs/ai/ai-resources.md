
## Why

✨ **A I** — **L L M** — **B I G D A T A** — **B U Z Z W O R D S** ✨

Look, I'm a certified AI skeptic. Its a tech bubble, its happened before, its gonna happen again. And like with each bubble, there is some pretty interesting and exciting technology hidden throughout the buckets of slop. I've tried to comb through the acrid goop to try and find some of these tools, and this gist is the brief summary of my findings. To me, code / tab completion is just the logical next step in LSP tech, coding languages are inherently rhytmic and structured, and LLMs are text pattern matching goblins. As for the more agentic / chat approach I am somewhat more hesitant in full adoption at the momment. Rife with confirmation and training bias, these bots can't help but stroke your ego and it really _really_ irks me. The hardcoded subservientness is a bit anti-thetical to my worldview (a topic for another time, see [berger's laws of chatbotics](https://gist.github.com/user-attachments/assets/1ed04e64-65f9-46a6-8c72-54642d03e8a3)), so for the most part, im going to try and find the one that, well, does it the least; I would describe its pathos as obsequious and asinine. Ultimately, they're a handly little tool to have at the ready if youre stumped and need to rubber duck a problem, or to perform some menial task while you can turn your attention elsewhere (reason we made robots). As for this gist itself and the motivation behind local llms, well its not exactly a shocker that the big tech comapnies use and abuse your data, overcharge for their services, [overpromise and underdeliver](https://youtu.be/edOHNRmRCzg), and all around fail to treat you with dignity and respect. BUT, you can [fight back](https://www.inkandswitch.com/local-first/static/local-first.pdf) by running these models, on your own machine on your own terms as all software should. I also provide a deployed / cloud based model solution as that is useful on machines that cannot phyiscally run the models meaningfully otherwise.

## What

### Tools

- [ollama](https://ollama.com/) - simple tool to run llms locally
- [roo code](https://roocode.com/) -  ai agent extension
  - be sure to configure [terminal integration](https://docs.roocode.com/features/shell-integration#manual-shell-integration-installation) as it is quite useful in giving the llm context to help you debug
- [github co-pilot](https://github.com/features/copilot) - (preferrably vscode to make use of the llm api)
  - education tier is pro for free!

#### Other Tooling!
- [llama-cpp](https://github.com/ggml-org/llama.cpp) - a potentially more lightweight alternative
- [lemonade](https://lemonade-server.ai/) - fine tune running models locally (namely for the folks with AMD hardware)
- [contnue.dev](https://www.continue.dev/) - another local agentic ide extension alternative
  - you can use this tool to configure [local tab completion](https://docs.continue.dev/customize/deep-dives/autocomplete)
- [cline](https://cline.bot/) - another local agentic ide extension alternative
- [opencode](https://opencode.ai/) - opensource coding agent, terminal style

### Remote / Deployed Models (as of 02/05/25)
- Github Copilot Pro via VS Code LLM API - for code completion and agentic tasks
  - [free via education plan](https://github.com/education/students)
  - Be wary of ratelimits and [multipliers](https://docs.github.com/en/copilot/concepts/billing/copilot-requests#model-multipliers)
- [Kimi K2.5](https://www.kimi.com/ai-models/kimi-k2-5) - all-in-one model (vision, code, etc.) much cheaper than its closed source counterparts (Google, Claude, OpenAI).
  - [it's potentially free for the time being via nvidia](https://medium.com/data-science-in-your-pocket/kimi-k2-5-free-api-b4ce65a14dd3)??
- [Mistral Vibe 2.0](https://mistral.ai/products/vibe) -  coding agent
  - it has a [student plan](https://chat.mistral.ai/upgrade/student)!
- [OpenRouter](https://openrouter.ai/) - ai model api library / hub
  - Possibly pay one time credit of 10 dollars to OpenRouter to unlock 1000 free requests per day. 
    - This DID work for me

### Local Models (as of 02/05/25)
- [mxbai-embed-large](https://ollama.com/library/mxbai-embed-large) - text embedding (enables semantic codebase searching)
- [Qwen3-Coder-Next](https://unsloth.ai/docs/models/qwen3-coder-next#usage-guide) - powerful and lightweight coding agent

## How

### Local Setup (macOS)

- Install Ollama

- (Optional) Copy the [simple completion](https://github.com/jennymaeleidig/dev-goodies/blob/main/config/bash/completions/ollama) script to your bash completions folder.

- e.g. Codebase Context Provider

```bash
ollama pull mxbai-embed-large:latest
```

### Current Preferred Setup

- [Roo Code](https://docs.roocode.com/) extension.
  - Disable Telemetry in settings.
- Using the [VS Code LLM API](https://docs.roocode.com/providers/vscode-lm)
- Using Github Copilot Pro.
- Be sure to set up local codebase indexing [with Roo](https://docs.roocode.com/features/codebase-indexing#key-benefits)
  - Use `mxbai-embed-large:latest` as described above
    - Model Dimension is: `1024`
  - I reccomend [this docker-compose approach](https://github.com/jennymaeleidig/dev-goodies/blob/main/docs/ai/qdrant.md) for Qdrant setup

### Additional Tooling Configuration

- [Fine tune](https://old.reddit.com/r/RooCode/comments/1mqv595/i_have_a_custom_context_editor_for_roo/) context saving via [custom commands](https://docs.roocode.com/features/slash-commands#creating-custom-commands)
  - [`/save`](https://github.com/jennymaeleidig/dev-goodies/blob/main/docs/ai/save.md)
  - [`/load`](https://github.com/jennymaeleidig/dev-goodies/blob/main/docs/ai/load.md)
  - [`/pr-desc`](https://github.com/jennymaeleidig/dev-goodies/blob/main/docs/ai/pr-desc.md)
    - uses the output of [`branch-compare.sh`](https://github.com/jennymaeleidig/dev-goodies/blob/main/docs/ai/branch-compare.sh) as input

- Fine tuning [all aspects](https://gist.github.com/livecodelife/6c97dc64ee1a12687a554ada9dd579dd) of Roo
  - Set Up MCP servers to provide even more context e.g.
    - [context7](https://github.com/upstash/context7) - framework documentation
    - [playwright](https://github.com/microsoft/playwright-mcp) - browser interaction
    - [brave search](https://github.com/brave/brave-search-mcp-server) - search the web
    - [git](https://github.com/modelcontextprotocol/servers/tree/main/src/git) - provide full git context i.e. branches, tree, commits, etc.
    - [sequential thinking](https://github.com/modelcontextprotocol/servers/tree/main/src/sequentialthinking) - breakdown complex operations / "problem solve"
  - Unsurprisingly, it is useful to develop a toolchain / workflow as described [here](https://gist.github.com/livecodelife/6c97dc64ee1a12687a554ada9dd579dd#detailed-workflow-breakdown)
    
### Further Reading

This is just my preferred setup at the moment and there are tons and tons of additional resources out there. As always the reccomendation is to explore for yourself, try new things, and see what works for you.

- [Fine Tuning Models](https://docs.unsloth.ai/get-started/fine-tuning-llms-guide)
- [Pull Private Models from Hugging Face w/ Ollama](https://huggingface.co/docs/hub/en/ollama#run-private-ggufs-from-the-hugging-face-hub)
- [LLM Benchmarking](https://swe-rebench.com/leaderboard)
  - [Power Effciency Benchmakrking](https://ml.energy/blog/measurement/energy/diagnosing-inference-energy-consumption-with-the-mlenergy-leaderboard-v30/)

AI Impact Education (Chat GPT is used as a catch-all for general llms / AI chat tooling.):

- [We Need AI Regulation, Not Like This](https://youtu.be/Swv3IqUWDok)
- [Your Are Being Bought and Sold](https://youtu.be/8VL16A7OWiw)
- [Chat GPT is Becoming a Relgion](https://youtu.be/zKCynxiV_8I)
- [Chat GPT is Affecting Language](https://youtu.be/yOWydu7hCLQ)
- [The False Promise of Chat GPT](https://archive.is/20250728183503/https://www.nytimes.com/2023/03/08/opinion/noam-chomsky-chatgpt-ai.html)
- [Chat GPT is "Replacing" Therapists](https://youtu.be/CO1HJBbNqeM)
- [AI Will Tell You What You Want to Hear](https://apnews.com/article/chatbot-ai-lawsuit-suicide-teen-artificial-intelligence-9d48adc572100822fdbc3c90d1456bd0)
- [Chatbots Can Go Into a Delusional Spiral. Here’s How It Happens.](https://archive.is/20250811173302/https://www.nytimes.com/2025/08/08/technology/ai-chatbots-delusions-chatgpt.html)
- [It's Healthy to Hate This](https://slingshotcollective.org/1-i-hate-ai/)
