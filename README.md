# Lemchat

Lemchat is a Perl-based system that simulates conversations between multiple personas, each with unique characteristics. The primary goal is to mimic human-like discussions aimed at personal growth and mutual understanding.

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
sudo apt-get install libyaml::tiny-perl libterm::ansicolor-perl libtime::hires-perl
```

## Installation

### Using Setup Scripts

1. Ensure you have the setup scripts:
                
                    setup_structure.pl
                    setup_personas.pl
                    setup_scripts.pl

   Scripts:
   - `setup_structure.pl`
   - `setup_personas.pl`
   - `setup_scripts.pl`

2. Run the setup scripts in order:
                
                    perl setup_structure.pl
                    perl setup_personas.pl
                    perl setup_scripts.pl

   ```bash
perl setup_structure.pl
perl setup_personas.pl
perl setup_scripts.pl
   ```

3. Install required Perl modules if missing.

### Manual Setup

1. Create the project directory:
                
                    mkdir lemchat
                    cd lemchat
                    mkdir personas logs

   ```bash
mkdir lemchat
cd lemchat
mkdir personas logs
   ```

2. Create persona files in the personas/ directory.

3. Create Perl scripts lemchat.pl and Persona.pm.

4. Set executable permissions:
                
                    chmod +x lemchat.pl

   ```bash
chmod +x lemchat.pl
   ```

5. Install required Perl modules.

## Usage

1. Navigate to the lemchat directory:
            cd lemchat

   ```bash
cd lemchat
   ```

2. Run the main script:
            ./lemchat.pl

   ```bash
./lemchat.pl
   ```

3. If you encounter a "Permission denied" error, make the script executable:
            chmod +x lemchat.pl
            ./lemchat.pl

   ```bash
chmod +x lemchat.pl
   ```

4. Observe the conversation between personas displayed in your terminal.

## Customization

### Adding New Personas

Create new YAML files in the personas/ directory following the existing format.

### Enhancing Response Generation

Modify Persona.pm to incorporate more complex NLP features or integrate external libraries.

### Improving Context Handling

Update lemchat.pl to better manage conversation topics and context.

### Adjusting Conversation Parameters

Change variables like the number of conversation turns or modify the turn-taking logic in lemchat.pl.

## Troubleshooting

- **Missing Modules**:

  Ensure all required Perl modules are installed.

- **Script Errors**:

  Check that all scripts are complete and correctly formatted.

- **Permission Issues**:

  Verify that you have the necessary permissions to create files and directories.

## License

This project is licensed under the MIT License.
