## Description
"Save findings into a `steps` file in the `aiplans` folder"

## Goal
* during the previous conversation we have important outcomes:
    * initial prompt and further user input/corrections
    * findings
    * plans
    * insigts
    * observation
    * decisions
* save them as facts (with a great details) into the new `steps` file

## Command Variants
* `/save new` command is used to create a new `steps` file in the `aiplans` folder
    * if the `aiplans` folder does not exist, create the folder in the current project's root directory
    * file name format `<YYMMDD>-<ID>-step-<Task_Code>-<Task_name>.md`
    * create the new `steps` file if we don't have any during the current conversation yet
    * initial user prompt must be set at the beginning of the new file with caption `# Step 0. Inital Prompt`, preserve the original text
* `/save` command is used to append outcomes to the same `steps` file we are working on
    * use `insert_content` tool to add the latest findings to the end of the investigation file

## Content
1. Structure:
        outcomes must be put into the new chapter called `# Step {NUMBER_OF_THE_STEP}`
        you must fit all outcomes in the ONE chapter, do not split it into several chapters
        feel free to use multiple sub-sections inside the chapter
2. Summary: Describe the curent step summary and general flow of the investigation
3. Facts: your main goal is describing of outcomes as facts (facts, facts!, FACTS!) with a great details
4. User Input: note the user's input and in which direction the user wants to go
5. Avoids: NO conclusions, NO hypothesis, NO proposals, NO assumptions, NO speculations, NO generalizations