# Lemchat

**Lemchat** is a Perl-based system that simulates conversations between multiple personas, each with unique characteristics. The primary goal is to mimic human-like discussions aimed at personal growth and mutual understanding.

## Features

- **Multi-Persona Conversations**: Five unique personas with distinct backgrounds and communication styles.
- **Personality Traits**: Each persona is defined using the Big Five personality traits.
- **Dynamic Responses**: Generates responses based on each persona's expertise and emotional state.
- **Context Management**: Simulates group discussions with turn-taking and context updates.

## Requirements

- **Operating System**: Linux
- **Perl Version**: 5.10 or higher
- **Perl Modules**:
  - `YAML::Tiny`
  - `Term::ANSIColor`
  - `Time::HiRes`

You can install the required Perl modules using CPAN:

```bash
cpan install YAML::Tiny Term::ANSIColor Time::HiRes
```

Or using your distribution's package manager (e.g., for Debian-based systems):

```bash
sudo apt-get install libyaml-tiny-perl libterm-ansicolor-perl libtime-hires-perl
```

## Installation

### Using Setup Scripts

1. **Ensure You Have the Setup Scripts**:

   Make sure you have the following setup scripts in your current directory:

   - `setup_structure.pl`
   - `setup_personas.pl`
   - `setup_scripts.pl`

2. **Run the Setup Scripts**:

   Execute the scripts in the following order:

   ```bash
   perl setup_structure.pl
   perl setup_personas.pl
   perl setup_scripts.pl
   ```

3. **Install Required Perl Modules**:

   If any Perl modules are missing, install them as shown in the [Requirements](#requirements) section.

### Manual Setup

If you prefer to set up the project manually, follow these steps:

1. **Create the Project Directory**:

   ```bash
   mkdir lemchat
   cd lemchat
   mkdir personas logs
   ```

2. **Create Persona Files**:

   - **Define Personas**: Create YAML files for each persona in the `personas/` directory. Refer to the sample persona files provided or create your own with the following structure:

     ```yaml
     name: [Persona Name]
     personality_traits:
       openness: [low/medium/high]
       conscientiousness: [low/medium/high]
       extraversion: [low/medium/high]
       agreeableness: [low/medium/high]
       neuroticism: [low/medium/high]
     background:
       history: "[Brief history]"
       cultural_influences: "[Cultural influences]"
     communication_style:
       language_use: "[Style of language]"
       tone: "[Tone of communication]"
     emotional_state: "[Current emotional state]"
     knowledge_base:
       expertise:
         - "[Area of expertise 1]"
         - "[Area of expertise 2]"
     ```

3. **Create Perl Scripts**:

   - **`lemchat.pl`**: The main script that runs the conversation.
   - **`Persona.pm`**: The module defining the Persona class.

   Place these files in the `lemchat` directory.

4. **Set Executable Permissions**:

   ```bash
   chmod +x lemchat.pl
   ```

5. **Install Required Perl Modules**:

   Ensure that the required Perl modules are installed as shown in the [Requirements](#requirements) section.

## Usage

To run Lemchat and start the conversation between the personas, follow these steps:

1. **Navigate to the `lemchat` Directory**:

   ```bash
   cd lemchat
   ```

2. **Run the Main Script**:

   ```bash
   ./lemchat.pl
   ```

   If you encounter a "Permission denied" error, make the script executable:

   ```bash
   chmod +x lemchat.pl
   ./lemchat.pl
   ```

3. **Observe the Conversation**:

   The personas will engage in a simulated conversation displayed in your terminal. Each persona's name and response will be shown, simulating turn-taking in a group discussion.

   **Sample Output:**

   ```
   === Welcome to lemchat! ===
   Emma Watson: I believe personal growth is deeply connected to my passion for feminism.
   Liam Chen: From a technical standpoint, feminism is closely related to mathematics.
   Sophia Martinez: I believe mathematics is deeply connected to my passion for photography.
   Michael Johnson: I believe photography is deeply connected to my passion for history. This is a critical matter.
   Aisha Khan: The essence of history dances gracefully with the art of music.
   === End of Conversation ===
   ```

4. **Customize as Needed**:

   - **Adjust Conversation Length**: In `lemchat.pl`, change the `$turns` variable to modify the number of conversation turns.

     ```perl
     my $turns = 15;  # Set to desired number of turns
     ```

   - **Add or Remove Personas**: Modify the persona YAML files in the `personas/` directory.

## Customization

You can tailor Lemchat to suit your preferences by modifying various aspects of the project:

### Adding New Personas

- **Create New Persona Files**:

  Add new YAML files in the `personas/` directory following the existing format.

- **Define Persona Attributes**:

  Specify the persona's name, personality traits, background, communication style, emotional state, and knowledge base.

### Enhancing Response Generation

- **Modify `Persona.pm`**:

  Update the `generate_response` method to incorporate more complex logic or advanced NLP techniques.

- **Incorporate NLP Libraries**:

  Use Perl NLP modules or integrate with external services for more sophisticated responses.

### Improving Context Handling

- **Update Conversation Logic**:

  Modify `lemchat.pl` to better manage conversation topics and context.

- **Implement Memory and Learning**:

  Allow personas to remember previous interactions and adapt their responses.

### Adjusting Conversation Parameters

- **Change Conversation Length**:

  Modify the `$turns` variable in `lemchat.pl` to change the number of conversation rounds.

- **Customize Turn-Taking Logic**:

  Alter the order in which personas speak or introduce randomness.

### Logging and Analysis

- **Enable Logging**:

  Implement logging in `lemchat.pl` to record conversations for analysis.

- **Analyze Conversations**:

  Use the logs to study interactions and improve the system.

### User Interaction

- **Interactive Mode**:

  Modify the program to accept user input, allowing you to engage directly with the personas.

- **Develop a User Interface**:

  Create a GUI or web interface for a more engaging experience.

### Integration with Other Systems

- **Connect with Chatbots**:

  Integrate Lemchat with chatbot frameworks to extend its capabilities.

- **API Development**:

  Develop an API to allow other applications to interact with Lemchat.

## Troubleshooting

- **Missing Modules**:

  Ensure all required Perl modules are installed.

- **Script Errors**:

  Check that all scripts are complete and correctly formatted.

- **Permission Issues**:

  Verify that you have the necessary permissions to create files and directories.

## License

This project is licensed under the MIT License.
