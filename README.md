# asfallen-pmavoicehelper

`asfallen-pmavoicehelper`, a RedM addon that provides a PMA-Voice range indicator. This tool allows players to visualize their voice range and facilitates better in-game communication.

## Features

- Visualizes PMA-Voice talking range.
- Customizable colors and display duration.
- Easy configuration and quick setup.

## Requirements

- **RedM** (Red Dead Redemption 2 Multiplayer Framework)
- **PMA-Voice** module

## Installation

1. Download this project and place it in the `resources` folder on your server.
   ```bash
   cd resources
   git clone <repository-url> asfallen-pmavoicehelper
   ```

2. Ensure the `fxmanifest.lua` file is correctly configured.

3. Add the following line to your `server.cfg` file:
   ```
   ensure asfallen-pmavoicehelper
   ```

4. Restart your server.

## Configuration

You can customize the addon by editing values in the `config.lua` file:

- **`Config.Color`**: Sets the indicator color (RGB).
  ```lua
  Config.Color = {
      r = 255, 
      g = 10, 
      b = 6   
  }
  ```

- **`Config.DisplayTime`**: Determines the display duration (in ms).
  ```lua
  Config.DisplayTime = 1000
  ```

- **`Config.YOffset`**: Adjusts the indicator height.
  ```lua
  Config.YOffset = -0.5
  ```

## Usage

When the PMA-Voice range is changed (e.g., via a keybind), the addon will automatically display the new range. The player will see a circular indicator for the specified duration.

## File Structure

- `fxmanifest.lua`: Resource manifest file.
- `client.lua`: Code that draws the in-game range indicator.
- `config.lua`: Customizable settings.

## Contributing

1. Fork the project.
2. Create a new branch for your changes.
3. Submit a Pull Request.

## License

This project is licensed under the [MIT License](LICENSE).
